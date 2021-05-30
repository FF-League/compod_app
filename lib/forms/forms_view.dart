import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:compod_app/commons/app_images.dart';
import 'package:compod_app/forms/components/forms_tile.dart';
import 'package:flutter/material.dart';

class FormsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Selecione o tipo\nde internação',
        textAlign: TextAlign.center,
        style: TextStyle(
            height: 1,
            decoration: TextDecoration.none,
            fontSize: 24,
            color: Colors.white,
            fontFamily: AppFonts.PalanquinDark,
            fontWeight: FontWeight.w400),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.buttonBlue1,
        centerTitle: true,
        title: const Text(
          'Internação',
          style: TextStyle(fontFamily: AppFonts.Palanquin),
        ),
      ),
      body: Container(
        color: AppColors.backgroundBlue,
        child: ListView(
          children: [
            header,
            FormsTile(AppImages.Psycho, 'Atendimento\nPsicológico'),
            FormsTile(AppImages.Hospital, 'Assistência\nSocial'),
            FormsTile(AppImages.Judge, 'Jurídico'),
            FormsTile(AppImages.Volunteer, 'Internação\nVoluntária')
          ],
        ),
      ),
    );
  }
}
