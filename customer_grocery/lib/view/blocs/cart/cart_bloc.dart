import 'package:bloc/bloc.dart';
import 'package:customer_grocery/data/models/response/cart/get_cart_by_id_model.dart/get_cart_by_id_model.dart';
import 'package:customer_grocery/data/repository/base/cart_repo_base.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartRepoBase cartRepoBase;
  CartBloc(this.cartRepoBase) : super(const _Initial()) {
    on<CartEvent>(
      (event, emit) async {
        Future<void> fetch() async {
          try {
            final data = await cartRepoBase.getCartById();
            final response = data.fold((l) => null, (r) => r);
            emit(CartState.dataLoadedState(response!));
          } catch (e) {
            emit(CartState.dataFailedState(e.toString()));
          }
        }

        Future<void> addItemToCart({
          String? productId,
          String? catalogId,
          String? sku,
          String? name,
        }) async {
          try {
            final data = await cartRepoBase.addItemToCartById(
                catalogId: catalogId,
                name: name,
                productId: productId,
                sku: sku);
            final respone = data.fold((l) => null, (r) => r);
            if (respone != null) {
              emit(const CartState.itemAdded());
            }
          } catch (e) {
            emit(CartState.dataFailedState(e.toString()));
          }
        }

        await event.when(
          started: () {
            emit(const _LoadingState());
          },
          loading: () {
            emit(const _LoadingState());
          },
          refresh: () async {
            emit(const _LoadingState());
            await fetch();
          },
          fetching: () async {
            await fetch();
          },
          addItemToCart: (
            productId,
            catalogId,
            sku,
            name,
          ) async {
            await addItemToCart(
              productId: productId,
              catalogId: catalogId,
              sku: sku,
              name: name,
            );
          },
        );
      },
    );
  }
}
