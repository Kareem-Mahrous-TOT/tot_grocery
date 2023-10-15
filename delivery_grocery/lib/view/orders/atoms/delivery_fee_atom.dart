import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:test_project/view/orders/atoms/cost_atom.dart';

class DeliveryFeeAtom extends StatelessWidget {
  const DeliveryFeeAtom({
    super.key,
    required this.deliveryFee,
  });

  final num deliveryFee;

  @override
  Widget build(BuildContext context) {
    return CostAtom(
      cost: deliveryFee,
      icon: const Icon(
        FlutterRemix.takeaway_fill,
        size: 18,
      ),
    );
  }
}
