import 'package:compod_app/commons/compod_colors.dart';
import 'package:compod_app/commons/compod_fonts.dart';
import 'package:flutter/material.dart';

class CompodThemes {
// /// Extremely large texts.
// final TextStyle? headline1;
//
// /// Very, very large texts.
// ///
// /// Used for the date in the dialog shown by [showDatePicker].
// final TextStyle? headline2;
//
// /// Very large texts.
// final TextStyle? headline3;
//
// /// Large texts.
// final TextStyle? headline4;
//
// /// Used for large texts in dialogs (e.g., the month and year in the dialog
// /// shown by [showDatePicker]).
// final TextStyle? headline5;
//
// /// Used for the primary texts in app bars and dialogs (e.g., [AppBar.title]
// /// and [AlertDialog.title]).
// final TextStyle? headline6;

  static final theme = ThemeData(
    primaryTextTheme: _blackTextTheme,
    textTheme: _blackTextTheme,
    accentTextTheme: _whiteTextTheme,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue.shade200,
    accentColor: Colors.greenAccent,
  );

  static final _blackTextTheme = TextTheme(
    headline1: _textStyle.copyWith(fontSize: 96.0, fontWeight: FontWeight.w300, fontFamily: CompodFonts.PalanquinDark),
    headline2: _textStyle.copyWith(fontSize: 60.0, fontWeight: FontWeight.w300),
    headline3: _textStyle.copyWith(fontSize: 48.0, fontWeight: FontWeight.w400),
    headline4: _textStyle.copyWith(fontSize: 34.0, fontWeight: FontWeight.w400),
    headline5: _textStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w400),
    headline6: _textStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w500),
    subtitle1: _textStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
    subtitle2: _textStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyText1: _textStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyText2: _textStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400),
    button: _textStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
    overline: _textStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
    caption: _textStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
  );

  static final _whiteTextTheme = TextTheme(
    headline1: _whiteTextStyle.copyWith(fontSize: 96.0, fontWeight: FontWeight.w300, fontFamily: CompodFonts.PalanquinDark),
    headline2: _whiteTextStyle.copyWith(fontSize: 60.0, fontWeight: FontWeight.w300),
    headline3: _whiteTextStyle.copyWith(fontSize: 48.0, fontWeight: FontWeight.w400),
    headline4: _whiteTextStyle.copyWith(fontSize: 34.0, fontWeight: FontWeight.w400),
    headline5: _whiteTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w400),
    headline6: _whiteTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w500),
    subtitle1: _whiteTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
    subtitle2: _whiteTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyText1: _whiteTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyText2: _whiteTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400),
    button: _whiteTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
    overline: _whiteTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
    caption: _whiteTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400),
  );

  static const _textStyle = TextStyle(
    color: Colors.black,
    fontFamily: CompodFonts.Palanquin,
  );

  static const _whiteTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: CompodFonts.Palanquin,
  );
}
