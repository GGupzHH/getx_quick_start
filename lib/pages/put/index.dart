import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/put/controller.dart';
import 'package:flutter_application_1/pages/put/put_next.dart';
import 'package:get/get.dart';

class PutView extends StatelessWidget {
  PutView({Key key}) : super(key: key);

  final controller = Get.put<PutController>(PutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Column(
        children: [
          GetX<PutController>(
            init: controller,
            initState: (_) {},
            builder: (_) => Text('${_.count}'),
          ),
          ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: const Text('add')),
          ElevatedButton(
            onPressed: () {
              Get.to(PutNextView());
            },
            child: const Text('next page'),
          )
        ],
      ),
    );
  }
}
