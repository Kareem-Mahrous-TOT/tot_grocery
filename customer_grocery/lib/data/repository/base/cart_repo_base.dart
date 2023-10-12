import 'package:customer_grocery/data/models/response/cart/get_cart_by_id_model.dart/get_cart_by_id_model.dart';
import 'package:customer_grocery/data/models/response/cart/search_cart_model.dart';
import 'package:customer_grocery/data/network/failure_exception.dart';
import 'package:dartz/dartz.dart';

abstract class CartRepoBase {
  Future<Either<FailureException, CartModel>> getCarts();
  Future<Either<FailureException, CartById>> getCartById();
  Future<Either<FailureException, int>> addItemToCartById({
    String? productId,
    String? catalogId,
    String? sku,
    String? name,
  });
}
