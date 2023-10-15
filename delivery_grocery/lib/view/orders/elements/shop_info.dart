import 'package:flutter/material.dart';

import '../../../app/components/molecules/image_title_subtitle_molecule.dart';
import '../../../domain/entites/order_details_entity.dart';
import '../molecules/order_party_image_molecule.dart';
import 'shop_extra_details.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    super.key,
    required this.orderDetailsModel,
    required this.isDeliveryShop,
    required this.isSetCurrentOrder,
  });

  final OrderDetailsEntity orderDetailsModel;
  final bool isDeliveryShop;
  final bool isSetCurrentOrder;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ITSInsides(
          img: OrderPartyImageMolecule(
            img: orderDetailsModel.shop.logoImg,
          ),
          title: orderDetailsModel.shop.title,
          subTitle: "№ ${orderDetailsModel.id}",
        ),
        const VerticalDivider(),
        ShopExtraDetails(orderDetailsModel: orderDetailsModel),
      ],
    );
  }
}
// TODO:
        // const Spacer(),
        // isDeliveryShop
        //     ? Row(
        //         children: [
        //           GestureDetector(
        //             onTap: () async {
        //               final Uri launchUri = Uri(
        //                 scheme: 'tel',
        //                 path: orderDetailsModel.shop.phone,
        //               );
        //               await launchUrl(launchUri);
        //             },
        //             child: Container(
        //               height: 38,
        //               width: 38,
        //               decoration: const BoxDecoration(
        //                   color: AppColors.blackColor, shape: BoxShape.circle),
        //               margin: const EdgeInsets.all(4),
        //               child: const Icon(
        //                 FlutterRemix.phone_fill,
        //                 color: AppColors.white,
        //                 size: 20,
        //               ),
        //             ),
        //           ),
        //           GestureDetector(
        //             onTap: () async {
        //               final Uri launchUri = Uri(
        //                 scheme: 'sms',
        //                 path: orderDetailsModel.shop.phone,
        //               );
        //               await launchUrl(launchUri);
        //             },
        //             child: Container(
        //               height: 38,
        //               width: 38,
        //               decoration: const BoxDecoration(
        //                   color: AppColors.blackColor, shape: BoxShape.circle),
        //               margin: REdgeInsets.all(4),
        //               child: const Icon(
        //                 FlutterRemix.chat_1_fill,
        //                 color: AppColors.white,
        //                 size: 20,
        //               ),
        //             ),
        //           ),
        //         ],
        //       )
        //     : const SizedBox.shrink(),
        // isSetCurrentOrder
        //     ? CustomToggleElement(
        //         isOrder: true,
        //         isOnline: orderDetailsModel.current,
        //         onChange: (bool value) {},
        //       )
        //     : const SizedBox.shrink()