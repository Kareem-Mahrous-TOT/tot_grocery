import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/base_bottom_sheet.dart';

import '../../../app/components/molecules/custom_button.dart';
import '../../../app/core/theming/app_colors.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      height: 200.h,
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            40.verticalSpace,
            Text(
              'Do you really want to logout?',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
                letterSpacing: -14 * 0.02,
              ),
            ),
            36.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: "Cancel",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    background: AppColors.transparent,
                    borderColor: AppColors.blackColor,
                  ),
                ),
                16.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    title: "yes",
                    onPressed: () {
                      // final GoogleSignIn signIn = GoogleSignIn();
                      // signIn.disconnect();
                      // signIn.signOut();
                      // LocalStorage.instance.logout();
                      // context.router.popUntilRoot();
                      // context.replaceRoute(const LoginRoute());
                    },
                    background: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
