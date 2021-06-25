import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:compod_app/commons/strings.dart';
import 'package:compod_app/commons/widgets/app_app_bar.dart';
import 'package:compod_app/commons/widgets/app_raised_button.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternationDescriptionView extends StatelessWidget {
  InternationDescriptionView({Key key}) : super(key: key);

  final title = FormsStringsEnum.psychologicalTreatment.name.tr;
  final content = "xxxxxxxxxxxx";

  void _continueAction() {}

  @override
  Widget build(BuildContext context) {
    final titleText = Text(
      title,
      style: TextStyle(
        fontFamily: AppFonts.Palanquin,
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );

    var textContent = Text(
      content,
      style: TextStyle(
        fontFamily: AppFonts.Palanquin,
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );

    return Scaffold(
      appBar: AppAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      backgroundColor: AppColors.backgroundBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 42),
            margin: EdgeInsets.all(16),
            color: AppColors.backgroundBlue2,
            child: Column(
              children: [
                titleText,
                textContent,
              ],
            ),
          ),
          AppRaisedButton(
            action: _continueAction,
            buttonText: StringsEnum.continueButton.name.tr,
          ),
        ],
      ),
    );
  }
}
