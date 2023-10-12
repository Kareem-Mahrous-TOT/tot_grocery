import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/app/components/molecules/bottom_sheet/show_custom_bottom_sheet.dart';
import 'package:test_project/app/core/theming/app_colors.dart';
import 'package:test_project/domain/entites/order_details_entity.dart';

import '../../../app/components/elements/double_dot_element.dart';
import '../atoms/credit_card_icon_atom.dart';
import '../molecules/cost_and_details_molecule.dart';
import '../molecules/order_party_molecule.dart';
import 'order_details_bottom_sheet.dart';

class OrderCard extends StatelessWidget {
  final OrderDetailsEntity orderModel;
  final bool isntHistory;
  final bool isActiveButton;

  const OrderCard({
    Key? key,
    required this.orderModel,
    required this.isntHistory,
    this.isActiveButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCustomModalBottomSheet(
            context: context,
            // paddingTop: MediaQuery.of(context).padding.top,
            radius: 12,
            widget: OrderDetailsBottomSheet(
              orderDetailsModel: orderModel,
              isntHistory: isntHistory,
              isActiveButton: isActiveButton,
            ),
            isDarkMode: false);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrderPartyMolecule(
                        title: orderModel.shop.title,
                        subTitle: orderModel.id,
                        img: orderModel.shop.logoImg,
                        extraDetail: orderModel.createdAt,
                      ),
                      const Spacer(),
                      const CreditCardIconAtom(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: const DoubleDotElement(),
                  ),
                  OrderPartyMolecule(
                    title: orderModel.address.address,
                    subTitle: orderModel.customer.firstName,
                    img: orderModel.customer.img,
                    extraDetail: orderModel.customer.phone,
                  ),
                ],
              ),
            ),
            40.verticalSpace,
            CostAndDetailsMolecule(
              totalPrice: orderModel.totalPrice,
              deliveryFee: orderModel.deliveryFee,
            ),
          ],
        ),
      ),
    );
  }
}
