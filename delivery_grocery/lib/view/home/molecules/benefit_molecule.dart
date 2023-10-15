import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/core/theming/app_fonts.dart';

import '../../../app/core/theming/app_colors.dart';

class BenefitMolecule extends StatelessWidget {
  const BenefitMolecule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.pushRoute(const OrdersRoute());
      },
      child: Container(
        height: 64,
        width: (MediaQuery.of(context).size.width - 42) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primaryColor),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.blackColor,
              ),
              child: const Icon(
                FlutterRemix.file_list_2_fill,
                color: AppColors.primaryColor,
              ),
            ),
            14.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                4.verticalSpace,
                SizedBox(
                  width: 60,
                  child: Text(
                    "Foodyman",
                    style: AppFontStyles.interNormal(
                        size: 12, letterSpacing: -0.3),
                    maxLines: 1,
                  ),
                ),
                Text(
                  "\$8,866.61",
                  style: AppFontStyles.interSemi(size: 14, letterSpacing: -0.3),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
