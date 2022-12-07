import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ValueBuildView extends StatelessWidget {
  const ValueBuildView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('value-build'),
      ),
      body: Center(
        child: Column(
          children: [
            ValueBuilder<int>(
              initialValue: 100,
              builder: (value, updateFn) {
                return Column(
                  children: [
                    Text('$value'),
                    ElevatedButton(
                      onPressed: () {
                        updateFn(value + 1);
                      },
                      child: const Text('data')
                    )
                  ],
                );
              },
              onUpdate: (val) {
                print(val);
              },
            )
          ],
        ),
      ),
    );
  }
}
