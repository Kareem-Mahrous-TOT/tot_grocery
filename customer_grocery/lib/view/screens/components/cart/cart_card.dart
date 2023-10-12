import 'package:cached_network_image/cached_network_image.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/core/theme/sizes.dart';
import 'package:customer_grocery/data/models/response/tot_products/customer_order/customer_order_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CartCard extends StatelessWidget {
  CartCard({super.key, required this.item, required this.counter});

  final LineItem item;
  int counter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 88.w,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Padding(
                    padding: REdgeInsets.all(10),
                    child: ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: item.imageUrl ?? "",
                        errorWidget: (context, url, error) {
                          return Image.network(
                            "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                            width: 88.w,
                            fit: BoxFit.fitWidth,
                          );
                        },
                        width: 88.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name!,
                    style: TextStyle(color: black, fontSize: fontSize16.sp),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "EGP ${item.price ?? 120.toInt()}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: black),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "x ${item.quantity}",
            style: const TextStyle(fontWeight: FontWeight.w600, color: black),
          ),
        ],
      ),
    );
  }
}
