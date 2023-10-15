import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: Size(375, 812),
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.getRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
