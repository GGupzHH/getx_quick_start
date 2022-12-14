
import 'package:get/get.dart';

class LazyController extends GetxController {


  final _count = 0.obs;
  set count(value) => _count.value = value;
  get count => _count.value;

  add() => _count.value++;

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}