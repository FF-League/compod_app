import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/forms/controller/internation_controller.dart';
import 'package:compod_app/forms/internation_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternationDescriptionView extends StatelessWidget {
  InternationDescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InternationController controller = Get.find();

    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              color: Colors.white24,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  child: Column(children: [
                    Obx(() => Text(controller.name.value, style: Get.textTheme.headline5)),
                    SizedBox(height: 24.0),
                    Obx(() => Text(controller.description.value, style: Get.textTheme.bodyText1)),
                  ]),
                ),
              ),
            ),
          ),
          CompodRaisedButton(action: () {}, buttonText: StringsEnum.continueButton.name.tr),
        ],
      ),
    );
  }
}
