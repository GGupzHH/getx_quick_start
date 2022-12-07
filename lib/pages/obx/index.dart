import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ObxView extends StatelessWidget {
  ObxView({Key key}) : super(key: key);

  final count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obx'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(count.toString())),
            ElevatedButton(
              onPressed: () {
                count.value++;
              },
              child: const Text('add')
            )
          ],
        ),
      ),
    );
  }
}
