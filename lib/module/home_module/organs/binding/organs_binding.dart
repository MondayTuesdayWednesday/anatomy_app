import 'package:anatomy/module/home_module/organs/controller/organs_controller.dart';
import 'package:get/get.dart';

class OrgansBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => OrgansController(),);
  }

}