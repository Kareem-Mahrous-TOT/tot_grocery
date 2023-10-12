import 'package:customer_grocery/data/models/response/category/category_response_model.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/data/repository/base/category_repository.dart';
import 'package:customer_grocery/data/repository/base/products_local.dart';
import 'package:customer_grocery/data/repository/base/products_repo_base.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ProductsRepoBase productsRepoBase;
  CategoryRepository categoryResponseModel;
  ProductsLocalRepoBase productsLocalRepoBase;

  HomeBloc(
    this.productsRepoBase,
    this.categoryResponseModel,
    this.productsLocalRepoBase,
  ) : super(_Initial()) {
    List<TOTProduct> productsList = [];
    on<HomeEvent>(
      (event, emit) async {
        Future<void> fetch() async {
          try {
            final data = await productsRepoBase.fetch(take: 100, skip: 0);
            final categoryData =
                await categoryResponseModel.getCategoriesByCatalogId(
              "f5790b39-4fc8-4aad-8318-259d28595f05",
            );
            final catData = categoryData.fold((l) => null, (r) => r);
            final myData = data.fold((l) => null, (r) => r);
            // final List<TOTProduct> hiveProducts =
            //     await productsLocalRepoBase.getProducts();

            // List<TOTProduct> updatedProducts = [];

            // Iterable<TOTProduct> allProducts = myData!.items!.map((e) {
            //   if (hiveProducts.contains(e)) {
            //     return e.copyWith(isSelected: true);
            //   } else {
            //     return e;
            //   }
            // });
            // updatedProducts.addAll(allProducts);

            emit(
              _LoadedData(
                // products: updatedProducts,
                products: myData!.items!,
                categories: catData!.items,
              ),
            );
          } catch (e) {
            emit(_FailedLoadingData(e.toString()));
          }
        }

        await event.map(
          started: (value) {
            emit(_LoadingState());
          },
          loading: (value) async {
            await fetch();
          },
          refresh: (value) async {
            emit(_LoadingState());
            await fetch();
          },
          loadProducts: (value) async {
            emit(_LoadingState());
            await fetch();
          },
          favorite: (favoriteEvent) async {
            // state.maybeMap(
            //   orElse: () {},
            //   loadedData: (state) async {
            //     List<TOTProduct> updatedProducts = [];
            //     // final box = Hive.box("fav");

            //     Iterable<TOTProduct> allProducts = state.products.map((e) {
            //       if (e.id == favoriteEvent.id) {
            //         return e.copyWith(isSelected: favoriteEvent.isSelected);
            //       } else {
            //         return e;
            //       }
            //     });
            //     updatedProducts.addAll(allProducts);
            //     emit(
            //       state.copyWith(products: updatedProducts),
            //     );
            //   },
            // );
          },
          searchList: (event) async {
            if (event.query != null && event.query!.isNotEmpty) {
              await state.maybeMap(
                orElse: () {},
                loadedData: (value) async {
                  emit(value.copyWith(
                      products: productsList, isSearching: true));
                  final productsAfterSearch = productsList
                      .where((element) => element.name
                          .toLowerCase()
                          .contains(event.query!.toLowerCase()))
                      .toList();
                  await Future.delayed(const Duration(seconds: 1), () {
                    emit(
                      _LoadedData(
                          products: productsAfterSearch, isSearching: false),
                    );
                  });
                },
              );
            } else {
              emit(
                _LoadedData(products: productsList, isSearching: false),
              );
            }
          },
        );
      },
    );
  }
}
