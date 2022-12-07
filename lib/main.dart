
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_pages.dart';
import 'package:get/get.dart';


Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // 是否开启debug右上角标记
      debugShowCheckedModeBanner: false,
      // 默认路由
      initialRoute: AppPages.INITIAL,
      // 路由表
      getPages: AppPages.routes,
      // 404
      unknownRoute: AppPages.unknownRoute,
    );
  }
}