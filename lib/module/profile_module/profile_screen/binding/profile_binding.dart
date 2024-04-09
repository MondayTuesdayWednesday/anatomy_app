
import 'package:anatomy/module/profile_module/profile_screen/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings{
  @override
  void dependencies(){
  Get.lazyPut(() => ProfileController());
  }
}