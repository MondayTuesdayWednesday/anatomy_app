import 'package:anatomy/module/profile_module/changepassword_screen/controller/changepassword_controller.dart';
import 'package:get/get.dart';

class ChangepasswordBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ChangepasswordController());
  }

}