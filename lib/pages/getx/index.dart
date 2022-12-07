import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getx/controller.dart';
import 'package:get/get.dart';

class GetXView extends StatelessWidget {
  GetXView({Key key}) : super(key: key);

  final controller = GetxCustomController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<GetxCustomController>(
              init: controller,
              initState: (_) {},
              builder: (_) => Text(_.obj.toString()),
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
