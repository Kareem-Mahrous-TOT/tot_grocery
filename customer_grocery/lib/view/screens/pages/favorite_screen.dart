import 'dart:developer';

import 'package:customer_grocery/core/constants/strings.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/view/screens/pages/home/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
    // required this.products,
  });
  // final List<TOTProduct> fav;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white10,
        height: 800.h,
        child: ValueListenableBuilder(
          valueListenable: Hive.box("fav").listenable(),
          builder: (context, box, child) {
            List<TOTProduct> fav = [];
            List indecies = [];
            for (int i = 0; i < box.length; i++) {
              if (box.get(i) != null) {
                fav.add(box.get(i));
                indecies.add(i);
              }
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ListView.builder(
                  itemCount: fav.length,
                  itemBuilder: (context, index) {
                    bool isFav = box.get(index) != null;
                    return InkWell(
                      onTap: () {
                        showBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 650.h,
                              width: double.infinity,
                              child: ProductDetails(
                                  currentIndex: index,
                                  onTap: () async {
                                    log("isFav is ::: $isFav");
                                    if (isFav) {
                                      await box.delete(indecies[index]);
                                    } else {
                                      await box.put(index, fav[index]);
                                    }
                                    final snackBar = SnackBar(
                                        content: !isFav
                                            ? Text(addedToFav)
                                            : Text(removedFromFav));
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(context)
                                          .clearSnackBars();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  },
                                  isSelected: isFav,
                                  product: fav[index]),
                            );
                          },
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            fav[index].imgSrc.toString() == "null"
                                ? SizedBox(
                                    height: 200.h,
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.grey.shade100,
                                      highlightColor: Colors.grey.shade300,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: grey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      fav[index].imgSrc.toString(),
                                      height: 200.h,
                                      width: 400.w,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Image.network(
                                            fit: BoxFit.fitHeight,
                                            height: 200.h,
                                            width: 300.w,
                                            "https://ps.w.org/replace-broken-images/assets/icon-256x256.png");
                                      },
                                    ),
                                  ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TOTTextAtom.titleMedium(
                                // fav[index].name.toString(),
                                fav[index].name.toString(),
                                color: black,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TOTTextAtom.bodyMedium(
                                fav[index].minQuantity != null ||
                                        fav[index].minQuantity != 0
                                    ? "In stock"
                                    : "out of Stock",
                                color: fav[index].minQuantity != null ||
                                        fav[index].minQuantity != 0
                                    ? green
                                    : danger,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                height: 30.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: TOTTextAtom.titleLarge("\$ 120"),
                                    ),
                                    IconButton(
                                      onPressed: () async {
                                        await box.delete(indecies[index]);
                                        const snackBar = SnackBar(
                                          content:
                                              Text("Removed from Favorite"),
                                        );
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  }),
            );
          },
        ),
      ),
    );
  }
}
