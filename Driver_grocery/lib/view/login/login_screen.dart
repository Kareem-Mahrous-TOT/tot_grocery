import 'package:flutter/material.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/show_custom_bottom_sheet.dart';
import 'package:test_project/app/components/molecules/custom_button.dart';
import 'package:test_project/app/core/value_managers/assets_manager.dart';
import 'package:test_project/view/login/organisms/login_bottom_sheet.dart';

import '../../app/core/theming/app_colors.dart';
import '../../app/core/value_managers/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox.expand(
            child: Image.network(
              ImgManager.networkLogin,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
            child: CustomButton(
                title: AppStrings.login,
                textColor: AppColors.white,
                onPressed: () {
                  showCustomModalBottomSheet(
                    context: context,
                    widget: LoginBottomSheet(),
                    isDarkMode: false,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
