import 'package:compod_app/commons/compod_colors.dart';
import 'package:compod_app/commons/compod_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodAppBar extends AppBar {
  CompodAppBar({required String text, Key? key})
      : super(
          key: key,
          centerTitle: true,
          title: Text(text),
        );
}
