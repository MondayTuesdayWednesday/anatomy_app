import 'package:anatomy/module/authentication_module/reset_password/controller/change_password_controller.dart';
import 'package:get/get.dart';

class ResetPasswordBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
  }

}