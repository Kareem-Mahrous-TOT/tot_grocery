import 'package:flutter/material.dart';

import 'empty_organism.dart';
import '../../../domain/entites/order_details_entity.dart';
import '../../../view/orders/organisms/order_card.dart';

class OrdersOrEmptyOrganism extends StatelessWidget {
  final List<OrderDetailsEntity> orders;
  final bool isntHistory;
  const OrdersOrEmptyOrganism(
      {super.key, required this.orders, this.isntHistory = true});

  @override
  Widget build(BuildContext context) {
    return (orders.isNotEmpty)
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              // padding: const EdgeInsets.only(
              //     // top: 30,
              //     // bottom: 45,
              //     ),
              shrinkWrap: true,
              itemCount: orders.length,
              itemBuilder: (context, index) => OrderCard(
                  orderModel: orders[index], isntHistory: isntHistory),
            ),
          )
        : const EmptyOrganism();
  }
}
