import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/core/theming/app_colors.dart';
import '../../../app/core/theming/app_fonts.dart';

class IncomeItem extends StatelessWidget {
  final String title;
  final String price;
  final bool isBlack;

  const IncomeItem(
      {Key? key,
      required this.title,
      required this.price,
      this.isBlack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: isBlack ? AppColors.blackColor : AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppFontStyles.interNormal(
                size: 14.sp,
                letterSpacing: -0.3,
                color: isBlack ? AppColors.white : AppColors.blackColor),
          ),
          6.horizontalSpace,
          Expanded(
            child: Text(
              price,
              style: AppFontStyles.interSemi(
                  size: 14.sp,
                  letterSpacing: -0.3,
                  color: isBlack ? AppColors.white : AppColors.blackColor),
            ),
          ),
        ],
      ),
    );
  }
}
