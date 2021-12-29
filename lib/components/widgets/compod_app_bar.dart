import 'package:flutter/material.dart';

class CompodAppBar extends AppBar {
  CompodAppBar({required String text, Key? key})
      : super(
          toolbarHeight: 100,
          elevation: 0,
          key: key,
          centerTitle: true,
          foregroundColor: Colors.white,
          title: Text(text),
        );
}
