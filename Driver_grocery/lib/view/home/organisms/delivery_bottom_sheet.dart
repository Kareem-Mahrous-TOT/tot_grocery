// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// class DeliverBottomSheetScreen extends StatelessWidget {
//   final OrderDetailData order;
//   const DeliverBottomSheetScreen({Key? key, required this.order})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Consumer(builder: (context, ref, child) {
//         return SizedBox(
//           height: ref.watch(homeProvider).isGoUser
//               ? MediaQuery.of(context).size.height * 1.8 / 3
//               : MediaQuery.of(context).size.height * 2 / 3,
//           width: double.infinity,
//           child: DraggableScrollableSheet(
//               initialChildSize: 0.2,
//               maxChildSize: 1,
//               minChildSize: 0.16,
//               snap: true,
//               builder: (context, scrollController) => Container(
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         color: Style.greyColor,
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(12.r),
//                           topLeft: Radius.circular(12.r),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Style.blackColor.withOpacity(0.25),
//                               blurRadius: 40,
//                               offset: const Offset(0, -2))
//                         ]),
//                     child: ListView(
//                       controller: scrollController,
//                       padding: EdgeInsets.only(
//                           top: 8.h,
//                           bottom: MediaQuery.of(context).padding.bottom + 16.h,
//                           left: 16.w,
//                           right: 16.w),
//                       children: [
//                         Container(
//                           height: 4.h,
//                           margin: EdgeInsets.symmetric(
//                               horizontal:
//                                   (MediaQuery.of(context).size.width - 100.w) /
//                                       2),
//                           decoration: BoxDecoration(
//                             color: Style.bottomSheetIconColor,
//                             borderRadius: BorderRadius.circular(40.r),
//                           ),
//                         ),
//                         24.verticalSpace,
//                         OrderItem(
//                           order: order,
//                           isDeliveryShop:
//                               ref.watch(homeProvider).isGoRestaurant,
//                           isDeliveryClient: ref.watch(homeProvider).isGoUser,
//                         ),
//                         24.verticalSpace,
//                         ref.watch(homeProvider).isGoRestaurant
//                             ? Column(
//                                 children: [
//                                   CustomButton(
//                                     title: AppHelpers.getTranslation(
//                                         TrKeys.orderInformation),
//                                     onPressed: () {
//                                       AppHelpers.showCustomModalBottomSheet(
//                                           context: context,
//                                           modal: FoodsPage(
//                                             order: order,
//                                           ),
//                                           isDarkMode: false);
//                                     },
//                                     background: Style.transparent,
//                                     borderColor: Style.blackColor,
//                                   ),
//                                   10.verticalSpace,
//                                 ],
//                               )
//                             : const SizedBox.shrink(),
//                         CustomButton(
//                           title: ref.watch(homeProvider).isGoRestaurant
//                               ? AppHelpers.getTranslation(
//                                   TrKeys.completeCheckout)
//                               : AppHelpers.getTranslation(
//                                   TrKeys.iDeliveredTheOrder),
//                           onPressed: () {
//                             if (ref.watch(homeProvider).isGoRestaurant) {
//                               AppHelpers.showAlertDialog(
//                                   context: context,
//                                   child: ApproveOrderDialog(
//                                     order: order,
//                                   ));
//                             } else {
//                               ref.read(homeProvider.notifier).deliveredFinish(
//                                     context: context,
//                                     orderId: order.id,
//                                   );
//                               AppHelpers.showCustomModalBottomSheet(
//                                   context: context,
//                                   modal: RateCustomer(
//                                     order: order,
//                                   ),
//                                   isDarkMode: false);
//                             }
//                           },
//                         ),
//                       ],
//                     ),
//                   )),
//         );
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/domain/entites/order_details_entity.dart';

import '../../../app/components/molecules/bottom_sheet/base_presistent_bottom_sheet.dart';
import '../../../app/components/molecules/custom_button.dart';
import '../../../app/core/theming/app_colors.dart';
import '../../../app/core/value_managers/app_strings.dart';
import '../../orders/organisms/order_details_item.dart';

class DeliveryBottomSheet extends StatelessWidget {
  final OrderDetailsEntity orderDetailsModel;
  final bool isHomeBottomSheet;

  const DeliveryBottomSheet({
    super.key,
    required this.orderDetailsModel,
    this.isHomeBottomSheet = false,
  });

  @override
  Widget build(BuildContext context) {
    return BasePresistentBottomSheet(
      height: 410.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.h),
        child: Column(
          children: [
            OrderDetailsItem(
              isHomeBottomSheet: isHomeBottomSheet,
              orderDetailsModel: orderDetailsModel,
              isSetCurrentOrder: false, 
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
