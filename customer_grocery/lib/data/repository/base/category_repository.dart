import 'package:customer_grocery/data/models/response/category/category_response_model.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:dartz/dartz.dart';
abstract class CategoryRepository {
  Future<Either<FailureException, CategoryResponseModel>> getCategories();
  Future<Either<FailureException, CategoryResponseModel>> getCategoriesByCatalogId(
      String catalogId);
}
