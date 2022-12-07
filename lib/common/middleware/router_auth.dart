import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:get/route_manager.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int priority = 0;

  RouteAuthMiddleware({this.priority});

  @override
  RouteSettings redirect(String route) {
    var isLogin = false;
    if (!isLogin) {
      Future.delayed(
        const Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    }

    return isLogin || route == AppRoutes.Login 
      ? null 
      : const RouteSettings(name: AppRoutes.Login);
  }
}
