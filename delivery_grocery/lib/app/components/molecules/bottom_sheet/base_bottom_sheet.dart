import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';

class BaseBottomSheet extends StatelessWidget {
  final Widget child;
  final double? height;
  final Color backgroundColor;

  const BaseBottomSheet(
      {super.key,
      required this.child,
      this.height,
      this.backgroundColor = AppColors.greyColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).viewInsets,
      // constraints: BoxConstraints.tight(Size.fromHeight(460.h)),
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.only(top: 16, left: 16, bottom: 16),
        child: child,
      ),
    );
  }
}
