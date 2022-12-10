import 'package:get/get.dart';

class splashController extends GetxController {

  final _obj = 0.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}