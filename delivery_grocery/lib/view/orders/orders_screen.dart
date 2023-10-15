import 'package:flutter/material.dart';
import 'package:test_project/app/core/value_managers/app_strings.dart';

import '../../app/components/templates/deliveries_template.dart';
import '../../domain/entites/order_details_entity.dart';
import '../../app/components/organisms/orders_or_empty_organism.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late Map<String, dynamic> json;
  List<OrderDetailsEntity> activeOrders = [];
  List<OrderDetailsEntity> availableOrders = [];

  @override
  void initState() {
    super.initState();
    // fetch().then((value) => null);
    json = {
      "title": "order",
      "id": "order ID",
      "createdAt": "13-2-2022",
      "totalPrice": 200,
      "deliveryFee": 10,
      "distance": 20,
      "current": true,
      "note": "don't be late",
      "location": {
        "lat": 1234.9,
        "lng": 12.0,
      },
      "user": {
        "id": "userID",
        "img":
            "https://th.bing.com/th/id/OIP.IbA5TZAIWjSdJCfZRZayTAAAAA?pid=ImgDet&rs=1",
        "firstName": "AbuAlhamd",
        "phone": "0000000000"
      },
      "shop": {
        "title": "shop",
        "logoImg":
            "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/gold-roman-imperial-eagle-s-p-q-r-special-edition-over-red-velvet-serge-averbukh.jpg",
        "phone": "7558989",
        "location": {
          "lat": 1234.9,
          "lng": 12.0,
        }
      },
      "adress": {
        "adress": "adress",
        "house": "house",
        "office": "office",
        "floor": "floor",
      },
      "transaction": {
        "tag": "tag",
      },
      "products": [
        {
          "title": "Brandeul",
          "interval": 10,
          "unitTitle": "pc",
          "description": "description",
          "totalPrice": 100,
        },
        {
          "title": "Ratatue",
          "interval": 1,
          "unitTitle": "pc",
          "description": "description",
          "totalPrice": 200,
        }
      ]
    };
    for (int i = 0; i < 5; i++) {
      // activeOrders.add(OrderModel.fromJson(json: json));
      availableOrders.add(OrderDetailsEntity.fromJson(json: json));
    }
  }

  // Future<void> fetch() async {
  //   json = await AppJsonDecoder().decode(path: 'assets/json/order_json.json');
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return DeliveriesTemplate(
      title: AppStrings.ordersTitle,
      activeTitle: AppStrings.activeOrders,
      availableTitle: AppStrings.availableOrders,
      activeWidget: OrdersOrEmptyOrganism(
        orders: activeOrders,
      ),
      availableWidget: OrdersOrEmptyOrganism(
        orders: availableOrders,
      ),
    );
  }
}
