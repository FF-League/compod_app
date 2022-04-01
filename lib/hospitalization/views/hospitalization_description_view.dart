import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/components/widgets/compod_scaffold.dart';
import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalizationDescriptionView extends StatelessWidget {
  const HospitalizationDescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HospitalizationController controller = Get.find();

    return CompodScaffold(
      appBarTitle: controller.name.value,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 24.0),
                child: Column(children: [
                  Obx(() => Text(controller.description.value, style: Get.textTheme.bodyText1?.copyWith(color: Colors.black.withOpacity(0.8), fontFamily: 'Nunito-SemiBold.ttf', fontWeight: FontWeight.w600), textAlign: TextAlign.justify)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(60, 150, 60, 36),
                      child: CompodRaisedButton(action: controller.goToFormInput, buttonText: CommonStrings.continueButton.tr,padding: 0,)
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
