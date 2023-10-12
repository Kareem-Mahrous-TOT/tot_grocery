import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/components/molecules/bottom_sheet/base_presistent_bottom_sheet.dart';
import '../../../app/components/molecules/custom_button.dart';
import '../../../app/components/molecules/parcel_details_molecule.dart';
import '../../../app/core/theming/app_colors.dart';
import '../../../app/core/value_managers/app_strings.dart';
import '../../../domain/entites/parcel_entity.dart';

class ParcelBottomSheet extends StatelessWidget {
  final ParcelEntity parcelModel;

  const ParcelBottomSheet({super.key, required this.parcelModel});

  @override
  Widget build(BuildContext context) {
    return BasePresistentBottomSheet(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            ParcelDetailsMolecule(
              parcelModel: parcelModel,
            ),
            20.verticalSpace,
            CustomButton(
              title: AppStrings.deliverOrCompleteCheckout,
              textColor: AppColors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
