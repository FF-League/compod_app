import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../hospitalization_strings.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(CompodImages.MadRobot, height: 130.0),
                  SizedBox(height: 24.0),
                  Text(HospitalizationStringsEnum.errorFormsMessage.tr, style: Get.textTheme.headline6?.copyWith(color: Colors.white)),
                ],
              ),
            ),
            CompodRaisedButton(action: () {},buttonText: StringsEnum.continueButton.tr),
          ],
        ),
      ),
    );
  }
}
