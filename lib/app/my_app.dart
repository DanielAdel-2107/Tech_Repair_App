import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_repair_app/core/routing/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp.router(
        title: 'Tracker App',
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouterConfig.goRouter,
      ),
    );
  }
}
