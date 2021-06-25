import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:compod_app/commons/app_images.dart';
import 'package:compod_app/commons/widgets/app_app_bar.dart';
import 'package:compod_app/forms/components/forms_tile.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormsSelectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        FormsStringsEnum.formsSelectViewHeader.name.tr,
        textAlign: TextAlign.center,
        style: TextStyle(
            height: 1,
            decoration: TextDecoration.none,
            fontSize: 24,
            color: Colors.white,
            fontFamily: AppFonts.PalanquinDark,
            fontWeight: FontWeight.w400,
        ),
      ),
    );
    return Scaffold(
      appBar: AppAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      body: Container(
        color: AppColors.backgroundBlue,
        child: ListView(
          children: [
            header,
            FormsTile(AppImages.Psycho, FormsStringsEnum.psychologicalTreatmentLineBreak.name.tr),
            FormsTile(AppImages.Hospital, FormsStringsEnum.socialAssistanceLineBreak.name.tr),
            FormsTile(AppImages.Judge, FormsStringsEnum.juridical.name.tr),
            FormsTile(AppImages.Volunteer, FormsStringsEnum.voluntaryHospitalization.name.tr)
          ],
        ),
      ),
    );
  }
}
