import 'package:get/get.dart';

class ToyController extends GetxController {
  final _isUserNameValid = false.obs;
  set isUserNameValid(value) => _isUserNameValid.value = value;
  get isUserNameValid => _isUserNameValid.value;
}