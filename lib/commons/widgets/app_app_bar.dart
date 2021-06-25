import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class AppAppBar extends AppBar {
  AppAppBar({String text, Key key})
      : super(
          key: key,
          centerTitle: true,
          backgroundColor: AppColors.buttonBlue1,
          title: Text(
            text,
            style: TextStyle(
              fontFamily: AppFonts.PalanquinDark,
              color: AppColors.green,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
}
