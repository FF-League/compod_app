import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  AppColors._();
  static final Color backgroundBlue   = HexColor("#3067D6");
  static final Color backgroundBlue2  = Color.fromRGBO(75, 118, 203, 1);
  static final Color buttonBlue1      = HexColor("#003555");
  static final Color buttonBlue2      = HexColor("#005682");
  static final Color green            = HexColor("#52F28A");
  // static final Color green            = Colors.white;

  static final theme = ThemeData(
    backgroundColor: backgroundBlue
  );

}