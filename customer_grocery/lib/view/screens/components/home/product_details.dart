import 'package:cached_network_image/cached_network_image.dart';
import 'package:customer_grocery/core/constants/strings.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/core/theme/sizes.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/view/blocs/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductDetails extends StatelessWidget {
  final TOTProduct product;
  final bool isSelected;
  final VoidCallback onTap;
  final int currentIndex;

  const ProductDetails({
    super.key,
    required this.product,
    required this.isSelected,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(rRectBorderRadius20),
          topRight: Radius.circular(rRectBorderRadius20),
        ),
      ),
      // height: 800.h,
      width: double.infinity,
      child: ValueListenableBuilder(
        valueListenable: Hive.box("fav").listenable(),
        builder: (context, box, child) => Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(rRectBorderRadius20),
                  color: groceryPrimary,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(rRectBorderRadius15),
              child: CachedNetworkImage(
                imageUrl: product.imgSrc ?? "",
                errorWidget: (context, url, error) {
                  return Image.network(
                    "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                    // width: 100.w,
                    fit: BoxFit.fitWidth,
                  );
                },
                height: 250.h,
                width: 400.w,
                // width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: fontSize20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                    '\$ ${product.minQuantity != null || product.minQuantity != 0 ? "120" : "120"}',
                    style: TextStyle(
                      fontSize: fontSize20.sp,
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(product.code ?? description,
                style: TextStyle(fontSize: fontSize16.sp, color: grey)),
            SizedBox(
              height: 20.h,
            ),
            Text(similarItems,
                style: TextStyle(
                  fontSize: fontSize20.sp,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 130.w,
                      height: 150.0.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(rRectBorderRadius20),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: product.imgSrc ?? "",
                          errorWidget: (context, url, error) {
                            return Image.network(
                              "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                              height: 190.h,
                              width: 140.w,
                            );
                          },
                          height: 190.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 50.h,
                  // padding: REdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(rRectBorderRadius20),
                    border: Border.all(
                      color: groceryPrimary, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: IconButton(
                    onPressed: onTap,
                    icon: box.get(currentIndex) != null
                        ? const Icon(
                            Icons.favorite_border_outlined,
                            color: grey,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: red,
                          ),
                  ),
                ),
                Container(
                  width: 200.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: groceryPrimary,
                    borderRadius: BorderRadius.circular(rRectBorderRadius15),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<CartBloc>().add(
                            CartEvent.addItemToCart(
                              catalogId: product.catalogId,
                              name: product.name,
                              productId: product.id,
                              sku: product.code,
                            ),
                          );
                      context.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: groceryPrimary,
                    ),
                    child: Center(
                      child: Text(
                        addToCart,
                        style: TextStyle(color: white, fontSize: fontSize16),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
