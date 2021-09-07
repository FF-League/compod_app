import 'package:compod_app/commons/compod_fonts.dart';
import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/components/widgets/compod_app_bar.dart';
import 'package:compod_app/forms/controller/forms_controller.dart';
import 'package:compod_app/forms/forms_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/forms_tile.dart';

class FormsSelectView extends StatelessWidget {

  final FormsController controller = Get.find();

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
            fontFamily: CompodFonts.PalanquinDark,
            fontWeight: FontWeight.w400,
        ),
      ),
    );
    return Scaffold(
      appBar: CompodAppBar(text: FormsStringsEnum.hospitalization.name.tr),
      body: Container(
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
