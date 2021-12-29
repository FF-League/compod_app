import 'package:compod_app/commons/compod_fonts.dart';
import 'package:flutter/material.dart';

class CompodThemes {

  static final theme = ThemeData(
    primaryTextTheme: _blackTextTheme,
    textTheme: _blackTextTheme,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    colorScheme: ColorScheme(
      background: Colors.white,
      brightness: Brightness.light,
      error: Colors.red.shade800,
      onBackground: Colors.white,
      onError: Colors.black,
      onPrimary: Colors.black,
      primary: CompodColors.compodBlue,
      primaryVariant: Colors.lightBlueAccent,
      secondary: Colors.green,
      secondaryVariant: Colors.greenAccent,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      surface: Colors.white
    ),
  );

  static final _blackTextTheme = TextTheme(
    headline1: _textStyle.copyWith(letterSpacing: -1.5, fontSize: 36.0, fontWeight: FontWeight.w300, fontFamily: CompodFonts.palanquinDark),
    headline2: _textStyle.copyWith(letterSpacing: -0.5, fontSize: 32.0, fontWeight: FontWeight.w300),
    headline3: _textStyle.copyWith(letterSpacing: 0.0, fontSize: 28.0, fontWeight: FontWeight.w400),
    headline4: _textStyle.copyWith(letterSpacing: 0.25, fontSize: 26.0, fontWeight: FontWeight.w400, height: 1.0),
    headline5: _textStyle.copyWith(letterSpacing: 0.0, fontSize: 22.0, fontWeight: FontWeight.w400),
    headline6: _textStyle.copyWith(letterSpacing: 0.15, fontSize: 22.0, fontWeight: FontWeight.w500),
    subtitle1: _textStyle.copyWith(letterSpacing: 0.15, fontSize: 16.0, fontWeight: FontWeight.w400),
    subtitle2: _textStyle.copyWith(letterSpacing: 0.1, fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyText1: _textStyle.copyWith(letterSpacing: 0.5, fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyText2: _textStyle.copyWith(letterSpacing: 0.25, fontSize: 14.0, fontWeight: FontWeight.w400),
    button: _textStyle.copyWith(letterSpacing: 1.25, fontSize: 14.0, fontWeight: FontWeight.w500),
    caption: _textStyle.copyWith(letterSpacing: 0.4, fontSize: 12.0, fontWeight: FontWeight.w400),
    overline: _textStyle.copyWith(letterSpacing: 1.5, fontSize: 10.0, fontWeight: FontWeight.w400),
  );

  static const _textStyle = TextStyle(
    color: Colors.black,
    fontFamily: CompodFonts.palanquin,
  );

}

class CompodColors {
  static const compodBlue = Color(0xFF005A87);
}