import 'package:customer_grocery/data/models/response/cart/get_cart_by_id_model.dart/get_cart_by_id_model.dart';
import 'package:customer_grocery/data/models/response/cart/search_cart_model.dart';
import 'package:customer_grocery/data/network/dio_helper.dart';
import 'package:customer_grocery/data/network/end_points.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:customer_grocery/data/repository/base/cart_repo_base.dart';
import 'package:dartz/dartz.dart';

class CartRepoImpl implements CartRepoBase {
  @override
  Future<Either<FailureException, CartModel>> getCarts() async {
    CartModel cartModel;
    try {
      final response =
          await DioHelper.getData(url: totSearchCartByIdEndpoint, token: token);
      cartModel = CartModel.fromJson(response.data);
      return Right(cartModel);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  Future<Either<FailureException, CartById>> getCartById() async {
    CartById model;
    try {
      final response =
          await DioHelper.getData(url: totSearchCartByIdEndpoint, token: token);
      model = CartById.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }

  @override
  Future<Either<FailureException, int>> addItemToCartById({
    String? productId,
    String? catalogId,
    String? sku,
    String? name,
  }) async {
    try {
      final response = await DioHelper.postData(
          data: {
            "productId": productId,
            "catalogId": catalogId,
            "sku": sku,
            "name": name,
            "quantity": 1,
            "currency": "EGP",
          },
          url: totaddItemtoCartByIdEndpoint,
          token:
              // prefs.getString(accessToken)
              token);
      return Right(response.statusCode!);
    } catch (e) {
      return Left(FailureException(message: e.toString()));
    }
  }
}
