import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/core/value_managers/assets_manager.dart';
import '../../../app/core/theming/app_fonts.dart';

class BalanceMolecule extends StatelessWidget {
  const BalanceMolecule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AppHelpers.showAlertDialog(
        //   context: context,
        //   child:  PushOrder(),
        // );
      },
      child: Container(
        height: 64,
        width: (MediaQuery.of(context).size.width - 42) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            SvgPicture.asset(ImgManager.svgBalance),
            // 14.horizontalSpace,
            14.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style:
                      AppFontStyles.interNormal(size: 12, letterSpacing: -0.3),
                ),
                Text(
                  '1.0e+219',
                  style: AppFontStyles.interSemi(size: 14, letterSpacing: -0.3),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
