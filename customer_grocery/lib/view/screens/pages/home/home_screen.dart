import 'package:customer_grocery/core/constants/strings.dart';
import 'package:customer_grocery/core/routes/router_paths.dart';
import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/data/models/response/go_router_models.dart';
import 'package:customer_grocery/view/blocs/home/category/category_bloc.dart';
import 'package:customer_grocery/view/blocs/home/home_bloc.dart';
import 'package:customer_grocery/view/screens/components/home/avatar_text.dart';
import 'package:customer_grocery/view/screens/components/home/card_item.dart';
import 'package:customer_grocery/view/screens/components/home/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class HomeScreen extends StatelessWidget {
  //bool isSelected = false;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(HomeEvent.loading());
        return await Future.delayed(const Duration(seconds: 1));
      },
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: Hive.box("fav").listenable(),
          builder: (context, box, child) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) => SizedBox(
                height: 850.h,
                child: state.when(
                  failedLoadingData: (value) => Text(fetchingFailed),
                  initial: () => const Center(
                    child: CircularProgressIndicator(
                      color: groceryPrimary,
                    ),
                  ),
                  loadingState: () => const Center(
                    child: CircularProgressIndicator(
                      color: groceryPrimary,
                    ),
                  ),
                  loadedData: (
                    products,
                    isSearching,
                    categories,
                    isLoading,
                  ) =>
                      Column(
                    children: [
                      SizedBox(
                        height: 150.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories!.length,
                          itemBuilder: (context, index) {
                            return AvatarTextMolecule(
                              onTap: () {
                                context.read<CategoryBloc>().add(
                                    CategoryEvent.fetch(categories[index].id));
                                context.push(RoutePaths.categories,
                                    extra: categories[index].name.toString());
                              },
                              categoryName: categories[index].name.toString(),
                              imageUrl: categories[index].images.isEmpty
                                  ? "https://ps.w.org/replace-broken-images/assets/icon-256x256.png"
                                  : categories[index].images.first,
                            );
                          },
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 400.w,
                            child: TOTTextWithTextButtonMolecule(
                                text: featuredProducts,
                                textButtonText: "View all",
                                onPressed: () {
                                  context.push(RoutePaths.viewAllProduct,
                                      extra: ProductExtraModel(
                                          title: featuredProducts,
                                          products: products));
                                },
                                buttonBackgroundColor: transparent),
                          ),
                          SizedBox(
                            height: 280.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                bool isFav = box.get(index) != null;
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 200.w,
                                    child: TOTPOSFoodCardItemMolecule(
                                      iconOnPressed: () async {
                                        // isSelected = !isSelected;
                                        // context.read<HomeBloc>().add(
                                        //       HomeEvent.favorite(
                                        //           id: products[index]
                                        //               .id
                                        //               .toString(),
                                        //           isSelected: isSelected),
                                        //     );

                                        if (isFav) {
                                          await box.delete(index);
                                        } else {
                                          await box.put(index, products[index]);
                                        }
                                        final snackBar = SnackBar(
                                            content: !isFav
                                                ? Text(addedToFav)
                                                : Text(removedFromFav));
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }
                                      },
                                      onTap: () {
                                        // context.push(RoutePaths.product,
                                        //     extra: products[index]);

                                        showBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height: 650.h,
                                              width: double.infinity,
                                              child: ProductDetails(
                                                currentIndex: index,
                                                  onTap: () async {
                                                    if (isFav) {
                                                      await box.delete(index);
                                                    } else {
                                                      await box.put(index,
                                                          products[index]);
                                                    }
                                                    final snackBar = SnackBar(
                                                        content: !isFav
                                                            ? Text(addedToFav)
                                                            : Text(
                                                                removedFromFav));
                                                    if (context.mounted) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .clearSnackBars();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              snackBar);
                                                    }
                                                  },
                                                  isSelected: isFav,
                                                  product: products[index]),
                                            );
                                          },
                                        );
                                      },
                                      mealImage:
                                          products[index].imgSrc.toString(),
                                      mealName:
                                          products[index].name.toString() ==
                                                  "null"
                                              ? notFound
                                              : products[index].name.toString(),
                                      mealDescription:
                                          products[index].minQuantity == null ||
                                                  products[index].minQuantity ==
                                                      0
                                              ? outOfStock
                                              : inStock,
                                      price: products[index].minQuantity != null
                                          ? "120"
                                          : "0",
                                      // isSelected: products[index].isSelected,
                                      isSelected: isFav,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 400.w,
                            child: TOTTextWithTextButtonMolecule(
                                text: dealsProducts,
                                textButtonText: "View all",
                                onPressed: () {
                                  context.push(RoutePaths.viewAllProduct,
                                      extra: ProductExtraModel(
                                          products: products,
                                          title: dealsProducts));
                                },
                                buttonBackgroundColor: transparent),
                          ),
                          SizedBox(
                            height: 280.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                bool isFav = box.get(index) != null;
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 200.w,
                                    child: TOTPOSFoodCardItemMolecule(
                                        onTap: () {
                                          // context.push(RoutePaths.product,
                                          //     extra: products[index]);
                                          showBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return ProductDetails(
                                                currentIndex: index,
                                                isSelected: isFav,
                                                product: products[index],
                                                onTap: () async {
                                                  if (isFav) {
                                                    await box.delete(index);
                                                  } else {
                                                    await box.put(
                                                        index, products[index]);
                                                  }
                                                  final snackBar = SnackBar(
                                                      content: !isFav
                                                          ? Text(addedToFav)
                                                          : Text(
                                                              removedFromFav));
                                                  if (context.mounted) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .clearSnackBars();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(snackBar);
                                                  }
                                                },
                                              );
                                            },
                                          );
                                        },
                                        iconOnPressed: () async {
                                          // isSelected = !isSelected;
                                          // context.read<HomeBloc>().add(
                                          //       HomeEvent.favorite(
                                          //           id: products[index]
                                          //               .id
                                          //               .toString(),
                                          //           isSelected: isSelected),
                                          //     );
                                          if (isFav) {
                                            await box.delete(index);
                                          } else {
                                            await box.put(
                                                index, products[index]);
                                          }
                                          final snackBar = SnackBar(
                                              content: !isFav
                                                  ? Text(addedToFav)
                                                  : Text(removedFromFav));
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          }
                                        },
                                        // isSelected: products[index].isSelected,
                                        isSelected: isFav,
                                        mealImage:
                                            products[index].imgSrc.toString(),
                                        mealName: products[index]
                                                    .name
                                                    .toString() ==
                                                "null"
                                            ? notFound
                                            : products[index].name.toString(),
                                        mealDescription: products[index]
                                                        .minQuantity ==
                                                    null ||
                                                products[index].minQuantity == 0
                                            ? outOfStock
                                            : inStock,
                                        price:
                                            products[index].minQuantity != null
                                                ? "120"
                                                : "0"),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
