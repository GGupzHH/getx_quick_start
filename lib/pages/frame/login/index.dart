import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:flutter_application_1/pages/home/index.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('登录页'),
      // ),
      backgroundColor: Colors.amber,
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Text(
                '登录',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 0), ()=> Get.offNamed(AppRoutes.My));
                  // Get.toNamed('/my');
                },
                icon: const Icon(Icons.abc),
                label: const Text('Login')
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Get.toNamed("/home");
                  Get.offAll(const HomePage());
                },
                icon: const Icon(Icons.abc),
                label: const Text('返回首页')
              )
            ],
          ),
        ),
      ),
    );
  }
}
