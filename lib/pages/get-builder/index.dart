import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/get-builder/controller.dart';
import 'package:get/get.dart';

class GetBuilderView extends StatelessWidget {
  GetBuilderView({Key key}) : super(key: key);

  final controller = GetBuildController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Builder'),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<GetBuildController>(
              init: controller,
              initState: (_) {},
              builder: (_) => Text(_.obj.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: const Text('add obj')
            ),
            ElevatedButton(
              onPressed: () {
                controller.update();
              },
              child: const Text('add obj')
            )
          ],
        ),
      ),
    );
  }
}
