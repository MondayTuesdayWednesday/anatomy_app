import 'package:anatomy/module/Payment_module/payment_method/controller/payment_method_controller.dart';
import 'package:get/get.dart';

class PaymentMethodBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => PaymentMethodController());
  }

}