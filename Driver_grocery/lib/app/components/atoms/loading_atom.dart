import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/theming/app_colors.dart';

class LoadingAtom extends StatelessWidget {
  final Color bgColor;

  const LoadingAtom({Key? key, this.bgColor = AppColors.greyColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: AppColors.primaryColor,
              strokeWidth: 5,
            )
          : const CupertinoActivityIndicator(
              radius: 12,
              color: AppColors.primaryColor,
            ),
    );
  }
}
