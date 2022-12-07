import 'package:get/get.dart';

class BuiltInController extends GetxController {
  final _count = 0.obs;
  set count(value) => _count.value = value;
  get count => _count.value;

  add() => _count.value++;

  @override
  void onInit() {
    super.onInit();

    ever(_count, (value) => print('每次改变' + value.toString()));

    once(_count, (value) => print('触发一次' + value.toString()));

    debounce(_count, (value) => print('防抖' + value.toString()),
        time: const Duration(seconds: 5));

    interval(_count, (value) => print('节流' + value.toString()),
        time: const Duration(seconds: 2));
  }
}
