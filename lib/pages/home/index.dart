import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text("导航-跳转路由 /home > /my"),
              subtitle: const Text('Get.toNamed("/my")'),
              onTap: () => Get.toNamed("/my"),
            ),
            ListTile(
              title: const Text("导航-嵌套路由 /home > /home/details"),
              subtitle: const Text('Get.toNamed("/home/details")'),
              onTap: () => Get.toNamed("/home/details"),
            ),
            const Divider(),
            ListTile(
              title: const Text("导航-arguments 传值+返回值"),
              subtitle: const Text('Get.toNamed("/home/details")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list_details",
                    arguments: {"id": '123'});
                Get.snackbar("返回值", "success -> " + result["success"].toString());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("导航-params 传值+返回值"),
              subtitle: const Text('Get.toNamed("/home/details?id=777")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list_details?id=777");
                Get.snackbar("返回值", "success -> " + result["success"].toString());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("导航-参数 传值+返回值"),
              subtitle: const Text('Get.toNamed("/home/details")'),
              onTap: () async {
                var result = await Get.toNamed("/home/details/999");
                Get.snackbar("返回值", "success -> " + result["success"].toString());
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("404"),
              subtitle: const Text('404页面'),
              onTap: () async {
                var result = await Get.toNamed("/home123123");
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Obx"),
              subtitle: const Text('Obx'),
              onTap: () async {
                await Get.toNamed(AppRoutes.Home + AppRoutes.Obx);
              },
            ),
            const Divider(),

            ListTile(
              title: const Text("Getx"),
              subtitle: const Text('Getx'),
              onTap: () async {
                await Get.toNamed(AppRoutes.Home + AppRoutes.Getx);
              },
            ),
            const Divider(),

            ListTile(
              title: const Text("GetBuild"),
              subtitle: const Text('GetBuild'),
              onTap: () async {
                await Get.toNamed(AppRoutes.Home + AppRoutes.GetBuild);
              },
            ),
            const Divider(),

            ListTile(
              title: const Text("ValueBuild"),
              subtitle: const Text('ValueBuild'),
              onTap: () async {
                await Get.toNamed(AppRoutes.Home + AppRoutes.ValueBuild);
              },
            ),
            const Divider(),

            ListTile(
              title: const Text("built-in"),
              subtitle: const Text('built-in'),
              onTap: () async {
                await Get.toNamed(AppRoutes.Home + AppRoutes.BuiltIn);
              },
            ),
            const Divider(),
          ],
        ));
  }
}
