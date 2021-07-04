import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class AppRaisedButton extends StatelessWidget {
  const AppRaisedButton({required this.buttonText, required this.action, Key? key}) : super(key: key);

  final String buttonText;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        onPressed: action,
        color: AppColors.buttonBlue1,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.buttonText,
              style: TextStyle(
                fontFamily: AppFonts.Palanquin,
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
