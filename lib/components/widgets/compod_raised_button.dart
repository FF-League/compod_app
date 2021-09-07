import 'package:compod_app/commons/compod_colors.dart';
import 'package:compod_app/commons/compod_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodRaisedButton extends StatelessWidget {
  const CompodRaisedButton({required this.buttonText, required this.action, Key? key}) : super(key: key);

  final String buttonText;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        onPressed: action,
        color: Get.theme.primaryColorDark,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.buttonText.toUpperCase(),
              style: Get.textTheme.button
            ),
          ),
        ),
      ),
    );
  }
}
