import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParamsDetails extends StatelessWidget {
  const ParamsDetails({Key key}) : super(key: key);

  Widget _buildParams(Map val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
            subtitle: const Text('Get.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    final params = Get.parameters;
    return Scaffold(
      appBar: AppBar(
        title: const Text('参数 detail'),
      ),
      body: Center(
        child: Column(
          children: [const Text('data'), _buildParams(params)],
        ),
      ),
    );
  }
}
