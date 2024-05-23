import 'package:anatomy/module/home_module/regional_module/muscular/controller/muscular_controller.dart';
import 'package:get/get.dart';

class MuscularBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => MuscularController(),);
  }

}