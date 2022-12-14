import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/lazyPut/controller.dart';
import 'package:get/get.dart';

class NextPageView extends GetView<LazyController> {
  const NextPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyPage')),
      body: Column(
        children: [
          Obx(() => Text('value -> ${controller.count}')),
          ElevatedButton(
            onPressed: () {
              controller.add();
            },
            child: const Text('add'),
          ),
        ],
      ));
  }
}
