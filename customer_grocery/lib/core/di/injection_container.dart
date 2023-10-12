import 'package:customer_grocery/data/network/dio_helper.dart';
import 'package:customer_grocery/data/repository/base/auth_repo_base.dart';
import 'package:customer_grocery/data/repository/base/cart_repo_base.dart';
import 'package:customer_grocery/data/repository/base/category_repository.dart';
import 'package:customer_grocery/data/repository/base/products_local.dart';
import 'package:customer_grocery/data/repository/base/products_repo_base.dart';
import 'package:customer_grocery/data/repository/impl/auth_repo_impl.dart';
import 'package:customer_grocery/data/repository/impl/cart_repo_impl.dart';
import 'package:customer_grocery/data/repository/impl/category_repository_impl.dart';
import 'package:customer_grocery/data/repository/impl/product_repo_impl.dart';
import 'package:customer_grocery/data/repository/impl/products_local_impl.dart';
import 'package:customer_grocery/view/blocs/cart/cart_bloc.dart';
import 'package:customer_grocery/view/blocs/home/category/category_bloc.dart';
import 'package:customer_grocery/view/blocs/home/home_bloc.dart';
import 'package:customer_grocery/view/blocs/layout/layout_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt sl = GetIt.instance;

SharedPreferences prefs = sl<SharedPreferences>();

Future<void> setUpDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  sl.registerSingleton<SharedPreferences>(sharedPreferences);
  sl.registerSingleton<DioHelper>(DioHelper());

  sl.registerSingleton<AuthBaseRepo>(AuthRepoImpl(dioHelper: sl()));
  sl.registerSingleton<ProductsRepoBase>(ProductsRepoImpl());
  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());
  sl.registerSingleton<ProductsLocalRepoBase>(ProductsLocalRepoImpl());
  sl.registerSingleton<CartRepoBase>(CartRepoImpl());

  sl.registerFactory<LayoutBloc>(() => LayoutBloc(sl()));
  sl.registerFactory<HomeBloc>(() => HomeBloc(sl(), sl(), sl()));
  sl.registerFactory<CategoryBloc>(() => CategoryBloc(sl()));
  sl.registerFactory<CartBloc>(() => CartBloc(sl()));

}
