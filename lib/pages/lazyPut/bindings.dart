import 'package:flutter_application_1/pages/lazyPut/controller.dart';
import 'package:get/get.dart';

class LazyBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LazyController>(() => LazyController());
  }
}