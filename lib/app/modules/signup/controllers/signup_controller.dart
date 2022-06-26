import 'package:get/get.dart';

class SignupController extends GetxController {
  final passwordShow = false.obs;
  final passwordConfirmShow = false.obs;

  @override
  void onClose() {}

  void changePasswordStatus() {
    passwordShow(!passwordShow.value);
  }

  void changePasswordConfirmShowStatus() {
    passwordConfirmShow(!passwordConfirmShow.value);
  }
}
