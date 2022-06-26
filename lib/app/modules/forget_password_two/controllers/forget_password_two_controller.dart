import 'package:get/get.dart';

class ForgetPasswordTwoController extends GetxController {
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
