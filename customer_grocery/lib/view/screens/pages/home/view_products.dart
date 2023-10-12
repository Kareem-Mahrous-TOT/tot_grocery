import 'package:customer_grocery/core/routes/router_paths.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/view/screens/components/home/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ViewProducts extends StatelessWidget {
  const ViewProducts({
    super.key,
    required this.title,
    required this.products,
  });
  final String title;
  final List<TOTProduct> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          splashRadius: 30,
          onPressed: () {
            context.go(RoutePaths.layout);
          },
        ),
        backgroundColor: groceryPrimary,
        title: Text(
          title,
          style: const TextStyle(color: white),
        ),
      ),
      body: Container(
        color: white10,
        height: 800.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductWidget(product: products[index]);
              }),
        ),
      ),
    );
  }
}
