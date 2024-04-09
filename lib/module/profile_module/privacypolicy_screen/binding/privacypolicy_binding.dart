import 'package:anatomy/module/profile_module/privacypolicy_screen/controller/privacypolicy_controller.dart';
import 'package:get/get.dart';

class PrivacypolicyBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacypolicyController());
  }
}