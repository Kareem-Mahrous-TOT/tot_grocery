import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/base_bottom_sheet.dart';
import 'package:test_project/app/components/molecules/custom_button.dart';
import 'package:test_project/view/login/atoms/email_text_field.dart';

import '../../../app/core/theming/app_colors.dart';
import '../molecules/app_bar_bottom_sheet.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppBarBottomSheet(
                title: "Reset password",
                onTap: () {},
              ),
              Text(
                "Please provide your email address and we'll send you code on how to change your password",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40),
              const EmailTextField(),
              // SizedBox(height: 120)
            ],
          ),
          CustomButton(
            title: "Send",
            onPressed: () {},
            background: AppColors.primaryColor,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
