import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/put/controller.dart';
import 'package:get/get.dart';

class PutNextView extends StatelessWidget {
  PutNextView({Key key}) : super(key: key);

  final controller = Get.find<PutController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put Next'),
      ),
      body: Column(
        children: [
          GetX<PutController>(
            init: controller,
            builder: (_) => Text('${_.count}'),
          ),
          ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: const Text('add')),
        ],
      ),
    );
  }
}
