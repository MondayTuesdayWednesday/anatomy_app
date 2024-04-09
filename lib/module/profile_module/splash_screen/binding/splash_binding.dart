import 'package:anatomy/module/profile_module/splash_screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}