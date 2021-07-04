import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class InternationDescriptionView extends StatelessWidget {
  InternationDescriptionView({Key? key}) : super(key: key);

  var title = "Atendimento Psicológico";
  var content = "xxxxxxxxxxxx";
  var appBar = AppBar(
    centerTitle: true,
    backgroundColor: AppColors.buttonBlue1,
    title: Text(
      "Internação",
      style: TextStyle(
        fontFamily: AppFonts.PalanquinDark,
        color: AppColors.green,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  void continueAction() {}

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

    var buttonText = Text(
      "Continuar",
      style: TextStyle(
        fontFamily: AppFonts.Palanquin,
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );

    var buttonWidget = Padding(
            padding: const EdgeInsets.all(16),
            child: MaterialButton(
                color: AppColors.buttonBlue1,
                child: Center(child: buttonText),
                onPressed: continueAction
            ),
          );
    return Scaffold(
      appBar: appBar,
      backgroundColor: AppColors.backgroundBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
          buttonWidget,
        ],
      ),
    );
  }
}
