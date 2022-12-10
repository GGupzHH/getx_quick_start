import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:get/get.dart';

class ToyView extends StatefulWidget {
  const ToyView({Key key}) : super(key: key);

  @override
  State<ToyView> createState() => _ToyViewState();
}

class _ToyViewState extends State<ToyView> {
  final countdown = 3.obs;

  @override
  void initState() {
    super.initState();
    _countdown();
  }

  Future<void> _countdown() async {
    const int duration = 3;
    for (int i = 0; i < duration; i++) {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted == true) {
          setState(() {
            countdown.value--;
          });
        }
      });
      // 倒计时结束, 进入 welcome
      if (countdown == 0) {
        print('跳转');
        Get.toNamed(AppRoutes.Toy + AppRoutes.ToyStart);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              // padding: Padding(padding: ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(48))),
              child: Image.asset(
                AssetImages.logoPng,
                width: 84,
                height: 80,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Online Market',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            const SizedBox(height: 20),
            Obx(() {
              return Text(countdown.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none));
            }),
          ],
        ),
      ),
      decoration: const BoxDecoration(color: Color(0xff0274bc)),
    );
  }
}
