import 'package:anatomy/module/authentication_module/widgets/done_view.dart';
import 'package:anatomy/module/home_module/home/binding/home_view_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_texts.dart';
import '../../home_module/Widgets/home_drawer.dart';
class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackTextColor,
        body: DoneView(
          titleText: AppTexts.paymentDoneTitleText,
          subTitle: AppTexts.paymentDoneSubTitleText,
          descriptionText: AppTexts.paymentDoneDEscriptionText,
          onPressed: () {
            Get.to(const HomePageDrawer() , binding: HomeBinding());
          },
        ));
  }
}
