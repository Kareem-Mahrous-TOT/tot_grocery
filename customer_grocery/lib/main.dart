import 'dart:developer';

import 'package:customer_grocery/core/di/injection_container.dart';
import 'package:customer_grocery/core/routes/app_router.dart';
import 'package:customer_grocery/data/models/response/tot_products/tot_product_model.dart';
import 'package:customer_grocery/view/blocs/cart/cart_bloc.dart';
import 'package:customer_grocery/view/blocs/home/category/category_bloc.dart';
import 'package:customer_grocery/view/blocs/home/home_bloc.dart';
import 'package:customer_grocery/view/blocs/layout/layout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpDependencies();
  final directory = await getApplicationCacheDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapter(TOTProductImplAdapter());
  Bloc.observer = MyBlocObserver();
  await Hive.openBox("fav");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<LayoutBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<HomeBloc>()..add(HomeEvent.loadProducts()),
          ),
          BlocProvider(
            create: (context) => sl<CategoryBloc>(),
          ),
          BlocProvider(
            create: (context) =>
                sl<CartBloc>()..add(const CartEvent.fetching()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: allRoutes,
          // supportedLocales: AppLang.supportedLocales,
          // localizationsDelegates: AppLang.localizationsDelegates,
        ),
      ),
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('onClose -- ${bloc.runtimeType}');
  }
}
