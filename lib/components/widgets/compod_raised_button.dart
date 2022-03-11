import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodRaisedButton extends StatelessWidget {
  const CompodRaisedButton({
    Key? key,
    required this.buttonText,
    required this.action,
    this.white = false,
    this.padding = 16.0,
  }) : super(key: key);

  final double padding;
  final bool white;
  final String buttonText;
  final void Function() action;

  Color? get buttonColor => white ? Colors.white : Get.theme.colorScheme.primary;

  TextStyle? get buttonTextStyle =>
      !white ? Get.textTheme.button?.copyWith(color: Colors.white) : null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        onPressed: action,
        color: buttonColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(buttonText, style: buttonTextStyle),
          ),
        ),
      ),
    );
  }
}
