import 'package:bloc/bloc.dart';
import 'package:customer_grocery/data/models/response/tot_products/list_entries/list_entries_products_model.dart';
import 'package:customer_grocery/data/repository/base/products_repo_base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ProductsRepoBase productRepo;
  CategoryBloc(this.productRepo) : super(const _Initial()) {
    on<CategoryEvent>((event, emit) async {
      Future<void> fetch(categoryId) async {
        try {
          final productResponse =
              await productRepo.fetchProductByCatId(categoryId: categoryId);
          final products =
              productResponse.fold((l) => null, (r) => r);

          emit(_LoadedDataState(products!.results!));
        } catch (e) {
          emit(_ErroState(e.toString()));
        }
      }

      await event.when(
        started: () {
          emit(const _LoadingState());
        },
        fetch: (categoryId) async {
          await fetch(categoryId);
        },
        error: (message) {
          emit(_ErroState(message));
        },
      );
    });
  }
}
