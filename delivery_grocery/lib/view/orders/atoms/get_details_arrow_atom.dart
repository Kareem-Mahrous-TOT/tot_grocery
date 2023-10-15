import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../../../app/core/theming/app_colors.dart';

class GetDetailsArrowAtom extends StatelessWidget {
  const GetDetailsArrowAtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: const BoxDecoration(
          color: AppColors.greyColor, shape: BoxShape.circle),
      child: const Icon(FlutterRemix.arrow_right_s_line),
    );
  }
}
