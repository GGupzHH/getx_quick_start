import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:get/get.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('什么都没找到'),
            ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.Home);
                },
                child: const Text('返回首页'))
          ],
        ),
      ),
    );
  }
}
