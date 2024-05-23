import 'package:anatomy/module/home_module/regional_module/cardiovascular/controller/cardiovascular_controller.dart';
import 'package:get/get.dart';

class CardiovascularBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CardiovascularController(),);
  }

}