import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/core/value_managers/assets_manager.dart';

import '../../../app/components/molecules/appbar/custom_app_bar.dart';
import '../../../app/components/atoms/buttons_bouncing_effect.dart';
import '../../../app/components/molecules/bottom_sheet/show_custom_bottom_sheet.dart';
import '../../../app/components/molecules/image_title_subtitle_molecule.dart';
import '../../../app/core/theming/app_colors.dart';
import '../../home/molecules/driver_avatar_molecule.dart';
import 'logout_bottom_sheet.dart';

class ProfileAppBar extends StatelessWidget {
  final String? profileImg;
  final double rating;
  final String name;
  final String id;

  const ProfileAppBar({
    super.key,
    this.profileImg = ImgManager.svgDefaultProfileImg,
    required this.rating,
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.white,
          height: 25.h,
        ),
        CustomAppBar(
          height: 90.h,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              ITSMolecule(
                img: DriverAvatarMolecule(
                  imageUrl:
                      profileImg, //"https://sainte-anastasie.org/img/images/las-50-mejores-frases-de-emiliano-zapata-el-mtico-revolucionario-mexicano.jpg",
                  rating: rating,
                ),
                title: name, //"Deliverboy Github",
                subTitle: id,
              ),
              const Spacer(),
              BouncingEffect(
                child: GestureDetector(
                  onTap: () {
                    showCustomModalBottomSheet(
                      context: context,
                      widget: const LogoutBottomSheet(),
                      isDarkMode: false,
                    );
                  },
                  child: Icon(
                    FlutterRemix.logout_circle_r_line,
                    size: 24.r,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
              16.horizontalSpace
            ],
          ),
        ),
      ],
    );
  }
}
