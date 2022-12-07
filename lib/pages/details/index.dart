import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/index.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.off(const HomePage());
              },
              child: const Text('清除路由')
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const DetailsPage());
              },
              child: const Text('清除所有路由')
            )
          ],
        ),
      ),
    );
  }
}
