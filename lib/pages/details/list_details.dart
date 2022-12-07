import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListDetailsPage extends StatelessWidget {
  const ListDetailsPage({Key key}) : super(key: key);

  Widget _buildArguments(Map val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("传值 id arg = " + val["id"].toString()),
            subtitle: const Text('Get2.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  Widget _buildParams(Map val) {
    print(val);
    return val['id'] == null
        ? Container()
        : ListTile(
            title: Text("传值 id par = " + val["id"].toString()),
            subtitle: const Text('Get1.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    final details = Get.arguments as Map;
    final params = Get.parameters;
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('data'),
            _buildArguments(details),
            _buildParams(params)
          ],
        ),
      ),
    );
  }
}
