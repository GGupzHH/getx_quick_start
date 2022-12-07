import 'package:flutter_application_1/common/middleware/index.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:flutter_application_1/pages/Account/index.dart';
import 'package:flutter_application_1/pages/built-in/index.dart';
import 'package:flutter_application_1/pages/details/index.dart';
import 'package:flutter_application_1/pages/details/list_details.dart';
import 'package:flutter_application_1/pages/details/params_details.dart';
import 'package:flutter_application_1/pages/frame/login/index.dart';
import 'package:flutter_application_1/pages/get-builder/index.dart';
import 'package:flutter_application_1/pages/getx/index.dart';
import 'package:flutter_application_1/pages/home/index.dart';
import 'package:flutter_application_1/pages/notFound/index.dart';
import 'package:flutter_application_1/pages/obx/index.dart';
import 'package:flutter_application_1/pages/value-build/index.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final List<GetPage> routes = [
    GetPage(name: AppRoutes.Login, page: () => const LoginView(), transition: Transition.downToUp),

    GetPage(name: AppRoutes.Home, page: () => const HomePage(), children: [
      GetPage(name: AppRoutes.Details, page: () => const DetailsPage()),
      GetPage(name: AppRoutes.ListDetails, page: () => const ListDetailsPage()),
      GetPage(name: AppRoutes.ParamsDetails, page: () => const ParamsDetails()),
      GetPage(name: AppRoutes.Obx, page: () => ObxView()),
      GetPage(name: AppRoutes.Getx, page: () => GetXView()),
      GetPage(name: AppRoutes.GetBuild, page: () => GetBuilderView()),
      GetPage(name: AppRoutes.ValueBuild, page: () => const ValueBuildView()),
      GetPage(name: AppRoutes.BuiltIn, page: () => BuiltInView()),
    ]),
    
    GetPage(name: AppRoutes.My, page: () => const AccountPage(), middlewares: [
      RouteAuthMiddleware(priority: 1)
    ])
  ];

  static final unknownRoute =
      GetPage(name: AppRoutes.Notfound, page: () => const NotFoundView());
}
