import 'package:anatomy/module/home_module/regional_module/female_breasts/controller/female_breast_controller.dart';
import 'package:get/get.dart';

class FemaleBreastBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FemaleBreastController(),);
  }

}