import 'package:customer_grocery/core/di/injection_container.dart';
import 'package:customer_grocery/data/models/response/category/category_response_model.dart';
import 'package:customer_grocery/data/network/dio_helper.dart';
import 'package:customer_grocery/data/network/end_points.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:customer_grocery/data/repository/base/category_repository.dart';
import 'package:dartz/dartz.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<Either<FailureException, CategoryResponseModel>>
      getCategories() async {
    final response = await DioHelper.postData(
      url: totCategoriesEndPoint,
      token: prefs.getString(accessToken),
      data: {
        "take": 200,
      },
    );
    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.data));
    }

    return Left(FailureException(message: 'Server Failure'));
  }

  @override
  Future<Either<FailureException, CategoryResponseModel>>
      getCategoriesByCatalogId(String catalogId) async {
    final response = await DioHelper.postData(
        url: totCategoriesEndPoint,
        data: {"catalogId": alkhbazId, "take": 200},
        token:
          // prefs.getString(accessToken)??
          token,
         );
    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.data));
    }

    return Left(FailureException(message: 'Server Failure'));
  }
}
