import 'package:customer_grocery/data/models/response/tot_products/list_entries/list_entries_products_model.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/data/network/dio_helper.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:customer_grocery/data/repository/base/products_repo_base.dart';
import 'package:dartz/dartz.dart';

import '../../network/end_points.dart';

class ProductsRepoImpl implements ProductsRepoBase {
  @override
  Future<Either<FailureException, TOTProductsModel>> fetch(
      {String? catalogId,
      String? productType,
      required int skip,
      required int take}) async {
    TOTProductsModel productsModel;

    try {
      final response = await DioHelper.postData(
          token:
              // prefs.getString(accessToken)??
              token,
          url: totProductsEndPoint,
          data: {
            "productType": productType ?? "Physical",
            "catalogId": catalogId ?? alkhbazId,
            "skip": skip,
            "take": take
          });
      productsModel = TOTProductsModel.fromJson(response.data);
      return Right(productsModel);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  Future<Either<FailureException, ListEntriesProducts>> fetchProductByCatId({
    String? catalogId,
    required String categoryId,
    String? productType,
    int? skip,
    int? take,
  }) async {
    ListEntriesProducts productsModel;
    try {
      final response = await DioHelper.postData(
          token:
              // prefs.getString(accessToken)??
              token,
          url: totlistEntriesEndPoint,
          data: {
            "categoryId": categoryId,
            // "productType": productType ?? "Physical",
            "catalogId": catalogId ?? alkhbazId,
            "skip": skip ?? 0,
            "take": take ?? 100
          });
      productsModel = ListEntriesProducts.fromJson(response.data);
      return Right(productsModel);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }
}
