import 'package:anatomy/module/home_module/regional_module/skeleton/controller/skeleton_controller.dart';
import 'package:get/get.dart';

class SkeletonBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SkeletonController(),);
  }
}