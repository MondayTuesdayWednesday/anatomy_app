import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_texts.dart';
import '../../Payment_module/payment/binding/payment_binding.dart';
import '../../Payment_module/payment/view/payment_view.dart';
import '../../authentication_module/widgets/done_view.dart';

class QuestionDoneView extends StatelessWidget {
  const QuestionDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackTextColor,
        body: DoneView(
          titleText: AppTexts.questionaryDoneTitleText,
          subTitle: AppTexts.questionaryDoneSubTitleText,
          descriptionText: AppTexts.questionaryDoneDescriptionText,
          onPressed: () {
            Get.off(const PaymentView(), binding: PaymentBinding());
          },
        ));
  }
}
