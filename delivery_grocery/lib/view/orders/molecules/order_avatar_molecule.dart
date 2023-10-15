import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/components/elements/double_dot_element.dart';
import '../../../domain/entites/order_details_entity.dart';
import '../elements/customer_info.dart';
import '../elements/shop_info.dart';

class OrderAvatarMolecule extends StatelessWidget {
  const OrderAvatarMolecule({
    super.key,
    required this.orderDetailsModel,
    required this.isDeliveryShop,
    required this.isSetCurrentOrder,
    required this.isDeliveryClient,
    this.isHomeBottomSheet = false,
  });

  final OrderDetailsEntity orderDetailsModel;
  final bool isDeliveryShop;
  final bool isSetCurrentOrder;
  final bool isDeliveryClient;
  final bool isHomeBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShopInfo(
            orderDetailsModel: orderDetailsModel,
            isDeliveryShop: isDeliveryShop,
            isSetCurrentOrder: isSetCurrentOrder),
        Padding(
          padding: REdgeInsets.symmetric(vertical: 5.0),
          child: const DoubleDotElement(),
        ),
        CustomerInfo(
          orderDetailsModel: orderDetailsModel,
          isDeliveryClient: isDeliveryClient,
          isHomeBottomSheet: isHomeBottomSheet,
        ),
      ],
    );
  }
}
