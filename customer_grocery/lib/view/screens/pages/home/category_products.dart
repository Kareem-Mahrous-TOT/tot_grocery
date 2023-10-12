import 'package:customer_grocery/core/routes/router_paths.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/view/blocs/home/category/category_bloc.dart';
import 'package:customer_grocery/view/screens/components/home/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
    required this.title,
  });
  final String title;
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
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) => state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(
                  color: groceryPrimary,
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(color: groceryPrimary),
              ),
              loadedData: (products) => ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCategoryWidget(product: products[index]);
                  }),
              error: (message) => Center(
                child: Text(
                  message.toString(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
