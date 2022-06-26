import 'package:get/get.dart';

class LoginController extends GetxController {
  final passwordShow = false.obs;
  final rememberMeChecked = true.obs;

  @override
  void onClose() {}

  void changePasswordStatus() {
    print("passwordShow ${passwordShow.value}");
    passwordShow(!passwordShow.value);
  }

  void changeRememberMeStatus() {
    rememberMeChecked.value = !rememberMeChecked.value;
  }
}
