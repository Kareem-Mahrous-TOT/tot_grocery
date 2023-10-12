import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

// ignore: must_be_immutable
class TOTPOSFoodCardItemMolecule extends StatelessWidget {
  final String? mealName;

  final String? mealDescription;

  final String price;
  final String mealImage;

  final VoidCallback onTap;
  bool isSelected;
  final VoidCallback iconOnPressed;

  TOTPOSFoodCardItemMolecule({
    super.key,
    required this.mealName,
    required this.mealDescription,
    required this.price,
    required this.mealImage,
    required this.onTap,
    this.isSelected = false,
    required this.iconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            mealImage.toString() == "null"
                ? SizedBox(
                    height: 150.h,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade100,
                      highlightColor: Colors.grey.shade300,
                      child: Container(
                        decoration: BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      height: 150.h,
                      // width: w * 0.3,
                      mealImage,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                            height: h * 0.2,
                            width: w * 0.3,
                            "https://ps.w.org/replace-broken-images/assets/icon-256x256.png");
                      },
                    ),
                  ),
            Align(
              alignment: Alignment.topLeft,
              child: TOTTextAtom.titleMedium(
                mealName!,
                color: black,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TOTTextAtom.bodyMedium(
                mealDescription!,
                color: mealDescription == "In stock" ? green : danger,
              ),
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TOTTextAtom.titleLarge("\$ $price"),
                  ),
                  IconButton(
                    onPressed: iconOnPressed,
                    icon: !isSelected
                        ? const Icon(
                            Icons.favorite_border_outlined,
                            color: grey,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: red,
                          ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
