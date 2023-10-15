import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/show_custom_bottom_sheet.dart';
import 'package:test_project/view/login/atoms/email_text_field.dart';
import 'package:test_project/view/login/atoms/forget_text_button.dart';
import 'package:test_project/view/login/molecules/app_bar_bottom_sheet.dart';
import 'package:test_project/view/login/organisms/reset_password_bottom_sheet.dart';

import '../../../app/components/molecules/bottom_sheet/base_bottom_sheet.dart';
import '../../../app/components/molecules/custom_button.dart';
import '../../../app/config/routes.dart';
import '../../../app/core/theming/app_colors.dart';
import '../../../app/core/value_managers/app_strings.dart';
import '../atoms/password_text_field.dart';

class LoginBottomSheet extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      height: 380.h,
      child: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.only(right: 12.w),
          child: Column(
            children: [
              AppBarBottomSheet(title: AppStrings.login, onTap: () {}),
              20.verticalSpace,
              //? email textfield
              EmailTextField(controller: emailController),
              34.verticalSpace,
              //? password textfield
              PasswordTextField(controller: passwordController),
              30.verticalSpace,
              //? keep logged checkbox and forget password button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 20.w,
                        width: 20.w,
                        child: Checkbox(
                          side: const BorderSide(
                            color: AppColors.blackColor,
                            width: 2,
                          ),
                          activeColor: AppColors.blackColor,
                          value: false,
                          onChanged: (bool? cond) {},
                        ),
                      ),
                      8.horizontalSpace,
                      Text(
                        AppStrings.keepMeLoggedIn,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  8.horizontalSpace,
                  ForgotTextButton(
                      title: AppStrings.forgetPassword,
                      onPressed: () {
                        showCustomModalBottomSheet(
                            context: context,
                            widget: const ResetPasswordBottomSheet(),
                            isDarkMode: false);
                      })
                ],
              ),
              32.verticalSpace,
              CustomButton(
                title: AppStrings.login,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.homeRoute);
                },
                background: AppColors.primaryColor,
                textColor: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
