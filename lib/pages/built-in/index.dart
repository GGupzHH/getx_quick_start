import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/built-in/controller.dart';
import 'package:get/get.dart';

class BuiltInView extends StatelessWidget {
  BuiltInView({Key key}) : super(key: key);

  final controller = BuiltInController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<BuiltInController>(
              init: controller,
              initState: (_) {},
              builder: (_) => Text(_.count.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: const Text('add obj')
            )
          ],
        ),
      ),
    );
  }
}
