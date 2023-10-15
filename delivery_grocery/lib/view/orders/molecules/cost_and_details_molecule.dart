import 'package:flutter/material.dart';

import '../atoms/delivery_fee_atom.dart';
import '../atoms/get_details_arrow_atom.dart';
import '../atoms/order_total_price_atom.dart';

class CostAndDetailsMolecule extends StatelessWidget {
  const CostAndDetailsMolecule({
    super.key,
    required this.totalPrice,
    required this.deliveryFee,
  });

  final num totalPrice;
  final num deliveryFee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          OrderTotalPriceAtom(
            totalPrice: totalPrice,
          ),
          const Spacer(),
          DeliveryFeeAtom(deliveryFee: deliveryFee),
          const Spacer(),
          const GetDetailsArrowAtom(),
        ],
      ),
    );
  }
}
