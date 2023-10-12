import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/base_bottom_sheet.dart';
import 'package:test_project/app/core/theming/app_colors.dart';
import 'package:test_project/domain/entites/order_details_entity.dart';

import '../../../app/components/molecules/bottom_sheet/show_custom_bottom_sheet.dart';
import '../../../app/components/molecules/custom_button.dart';
import 'foods_bottom_sheet.dart';
import 'order_details_item.dart';

class OrderDetailsBottomSheet extends StatelessWidget {
  final OrderDetailsEntity orderDetailsModel;
  final bool isntHistory;
  final bool isActiveButton;

  const OrderDetailsBottomSheet(
      {super.key,
      required this.orderDetailsModel,
      required this.isntHistory,
      required this.isActiveButton});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      height: 500,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shrinkWrap: true,
        children: [
          OrderDetailsItem(
            orderDetailsModel: orderDetailsModel,
            isSetCurrentOrder: isntHistory && isActiveButton,
          ),
          isntHistory
              ? Column(
                  children: [
                    16.verticalSpace,
                    CustomButton(
                      title: "Order Information",
                      onPressed: () {
                         showCustomModalBottomSheet(
                            context: context,
                            widget: FoodsBottomSheet(
                              orderModel: orderDetailsModel,
                            ),
                            isDarkMode: false);
                      },
                      background: AppColors.transparent,
                      borderColor: AppColors.blackColor,
                    ),
                    16.verticalSpace,
                    CustomButton(
                      isLoading: false,
                      title: "Start Shopping / Complete Checkout",
                      onPressed: () {},
                      background: AppColors.primaryColor,
                    ),
                    16.verticalSpace,
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
