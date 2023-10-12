import 'package:customer_grocery/data/models/response/tot_products/list_entries/list_entries_products_model.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepoBase {
  Future<Either<FailureException, TOTProductsModel>> fetch(
      {String? catalogId,
      String? productType,
      required int skip,
      required int take});
  Future<Either<FailureException, ListEntriesProducts>> fetchProductByCatId(
      {String? catalogId,
      required String categoryId,
      String? productType,
      int? skip,
      int? take});
}
