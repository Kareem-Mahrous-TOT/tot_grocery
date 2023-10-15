import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../../../app/components/atoms/image_shimmer_atom.dart';
import '../../../app/core/theming/app_colors.dart';

class OrderPartyImageMolecule extends StatelessWidget {
  const OrderPartyImageMolecule({
    super.key,
    required this.img,
    this.isCircel = true,
    this.shimmerSize = 32,
    this.imgHeight = 32,
    this.imgWidth = 32,
  });

  final String? img;
  final bool isCircel;
  final double shimmerSize;
  final double imgHeight;
  final double imgWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgHeight,
      width: imgWidth,
      decoration: BoxDecoration(
          color: AppColors.white,
          shape: isCircel ? BoxShape.circle : BoxShape.rectangle),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: img ?? "",
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, progress) {
            return ImageShimmerAtom(
              isCircle: isCircel,
              size: shimmerSize,
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              // height: 32,
              // width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.greyColor,
              ),
              alignment: Alignment.center,
              child: const Icon(
                FlutterRemix.image_line,
                color: AppColors.blackColor,
              ),
            );
          },
        ),
      ),
    );
  }
}
