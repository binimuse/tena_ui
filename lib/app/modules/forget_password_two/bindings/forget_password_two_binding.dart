import 'package:get/get.dart';

import '../controllers/forget_password_two_controller.dart';

class ForgetPasswordTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPasswordTwoController>(
      () => ForgetPasswordTwoController(),
    );
  }
}
