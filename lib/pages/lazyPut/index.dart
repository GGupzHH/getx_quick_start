import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:flutter_application_1/pages/lazyPut/controller.dart';
import 'package:get/get.dart';

class LazyPutView extends StatelessWidget {
  const LazyPutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lazy put'),
      ),
      body: Column(
        children: [
          GetX<LazyController>(
            init: Get.find<LazyController>(),
            initState: (_) {},
            builder: (_) => Text('${_.count}'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<LazyController>().add();
            },
            child: const Text('add')
          ),
          ElevatedButton(onPressed: () {
            Get.toNamed(AppRoutes.Home + AppRoutes.LazyNext);
          }, child: const Text('Next GetView Page'))
        ],
      ),
    );
  }
}
