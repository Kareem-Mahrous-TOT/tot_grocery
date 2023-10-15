import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../../../app/config/routes.dart';
import '../../../app/core/theming/app_colors.dart';

class BadgeChildAtom extends StatelessWidget {
  const BadgeChildAtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(8),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.ordersRoute);
        },
        icon: const Icon(
          FlutterRemix.history_fill,
          color: Colors.white,
        ),
      ),
    );
  }
}
