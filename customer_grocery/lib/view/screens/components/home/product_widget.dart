import 'package:cached_network_image/cached_network_image.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/core/theme/sizes.dart';
import 'package:customer_grocery/data/models/response/tot_products/list_entries/list_entries_products_model.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});
  final TOTProduct product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      padding: REdgeInsets.all(5),
      width: 268.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(
                Radius.circular(rRectBorderRadius10),
              ),
            ),
            width: double.infinity,
            height: 190.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(rRectBorderRadius10),
              ),
              child: CachedNetworkImage(
                imageUrl: product.imgSrc ?? "",
                errorWidget: (context, url, error) {
                  return Image.network(
                    "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                  );
                },
                height: 190.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          10.verticalSpace,
          const Divider(color: white10, thickness: 1),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: fontSize18),
                  ),
                  const Spacer(),
                  Text(
                    product.maxQuantity != 0 || product.minQuantity != 0
                        ? "in Stock"
                        : "Out of Stock",
                    style: TextStyle(
                      fontSize: fontSize18,
                      color:
                          product.maxQuantity != 0 || product.minQuantity != 0
                              ? success
                              : danger,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCategoryWidget extends StatelessWidget {
  const ProductCategoryWidget({super.key, required this.product});
  final Result product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      padding: REdgeInsets.all(5),
      width: 268.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(
                Radius.circular(rRectBorderRadius10),
              ),
            ),
            width: double.infinity,
            height: 190.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(rRectBorderRadius10),
              ),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl ?? "",
                errorWidget: (context, url, error) {
                  return Image.network(
                    "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                  );
                },
                height: 190.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          10.verticalSpace,
          const Divider(color: white10, thickness: 1),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.name!,
                    style: TextStyle(fontSize: fontSize18),
                  ),
                  const Spacer(),
                  Text(
                    product.isActive! ? "in Stock" : "Out of Stock",
                    style: TextStyle(
                      fontSize: fontSize18,
                      color: product.isActive! ? success : danger,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
