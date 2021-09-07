import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/components/widgets/compod_raised_button.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternationDescriptionView extends StatelessWidget {
  InternationDescriptionView({Key? key}) : super(key: key);

  final content = "xxxxxxxxxxxx";

  void _continueAction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 42),
            margin: EdgeInsets.all(16),
            color: Colors.white24,
            child: Column(
              children: [
                Text(FormsStringsEnum.psychologicalTreatment.name.tr, style: Get.textTheme.headline4),
                Text(content, style: Get.textTheme.bodyText1),
              ],
            ),
          ),
          CompodRaisedButton(
            action: _continueAction,
            buttonText: StringsEnum.continueButton.name.tr,
          ),
        ],
      ),
    );
  }
}
