import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/hospitalization_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationDescriptionView extends StatelessWidget {
  const HospitalizationDescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HospitalizationController controller = Get.find();

    return Scaffold(
      appBar: CompodAppBar(text: HospitalizationStringsEnum.hospitalization.tr),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 2.0, spreadRadius: 2.0)],
                borderRadius: BorderRadius.circular(8.0),
                color: Get.theme.colorScheme.surface,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  child: Column(children: [
                    Obx(() => Text(controller.name.value, style: Get.textTheme.headline5, textAlign: TextAlign.center)),
                    const SizedBox(height: 24.0),
                    Obx(() => Text(controller.description.value, style: Get.textTheme.bodyText2, textAlign: TextAlign.justify)),
                  ]),
                ),
              ),
            ),
          ),
          CompodRaisedButton(action: controller.goToFormInput, buttonText: CommonStrings.continueButton.tr),
        ],
      ),
    );
  }
}
