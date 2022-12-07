import 'package:get/get.dart';


class GetBuildController extends GetxController {
  final _obj = 0.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  add() {
    _obj.value++;
  }
}
