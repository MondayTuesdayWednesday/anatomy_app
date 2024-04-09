import 'package:anatomy/module/home_module/regional_anatomy/controller/regional_anatomy_controller.dart';
import 'package:get/get.dart';

class RegionalAnatomyBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<RegionalAnatomyController>(() => RegionalAnatomyController());
  }

}