import 'package:flutter/material.dart';

class CompodAppBar extends AppBar {
  CompodAppBar({required String text, Key? key})
      : super(
          key: key,
          centerTitle: true,
          title: Text(text),
        );
}
