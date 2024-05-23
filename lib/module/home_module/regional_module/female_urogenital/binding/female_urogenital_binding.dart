import 'package:anatomy/module/home_module/regional_module/female_urogenital/controller/female_urogenital_controller.dart';
import 'package:get/get.dart';

class FemaleUrogenitalBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FemaleUrogenitalController(),);
  }

}