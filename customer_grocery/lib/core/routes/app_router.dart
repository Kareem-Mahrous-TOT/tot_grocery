import 'package:customer_grocery/data/models/response/go_router_models.dart';
import 'package:customer_grocery/view/screens/pages/favorite_screen.dart';
import 'package:customer_grocery/view/screens/pages/home/category_products.dart';
import 'package:customer_grocery/view/screens/pages/home/view_products.dart';
import 'package:customer_grocery/view/screens/pages/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router_paths.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter allRoutes = GoRouter(
  // redirect: (context, state) async {
  //   if (prefs.getString(accessToken) != null) {
  //     return RoutePaths.layout;
  //   } else {
  //     return RoutePaths.login;
  //   }
  // },
  navigatorKey: navigatorKey,
  initialLocation: RoutePaths.layout,
  routes: [
    GoRoute(
      path: RoutePaths.layout,
      builder: (BuildContext context, GoRouterState state) =>
          const LayoutScreen(),
    ),
    GoRoute(
      path: RoutePaths.viewAllProduct,
      builder: (BuildContext context, GoRouterState state) {
        final model = state.extra as ProductExtraModel;
        return ViewProducts(
          title: model.title,
          products: model.products,
        );
      },
    ),
    // GoRoute(
    //   path: RoutePaths.product,
    //   builder: (BuildContext context, GoRouterState state) {
    //     final model = state.extra as ProductDetailsModel;
    //     return ProductDetails(product: model);
    //   },
    // ),
    GoRoute(
      path: RoutePaths.favorite,
      builder: (BuildContext context, GoRouterState state) {
        return const FavoriteScreen();
      },
    ),
    GoRoute(
      path: RoutePaths.categories,
      builder: (BuildContext context, GoRouterState state) {
        final title = state.extra as String;
        return CategoryProducts(
          title: title,
        );
      },
    ),
  ],
);
