import 'package:anatomy/module/home_module/regional_module/eye/controller/eye_controller.dart';
import 'package:get/get.dart';

class EyeBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => EyeController(),);
  }

}