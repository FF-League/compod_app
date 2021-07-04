import 'dart:ui';

import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class FormsTile extends StatefulWidget {
  FormsTile(this.image, this.text, {Key? key}) : super(key: key);

  final String image;
  final String text;

  @override
  _FormsTileState createState() => _FormsTileState();
}

class _FormsTileState extends State<FormsTile> {
  final double _size = 100;
  final double _imageSize = 48;

  bool _highlighted = false;

  void _buttonPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 2, offset: Offset(0, 2))],
        border: Border.all(color: _highlighted ? AppColors.green.withOpacity(0.6) : Colors.white.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: Alignment(0, 0.4), end: Alignment.bottomCenter, colors: [AppColors.buttonBlue1, AppColors.buttonBlue2]),
        // color: AppColors.buttonBlue,
      ),
      height: _size,
      child: MaterialButton(
        onPressed: _buttonPressed,
        onHighlightChanged: (highlight) {
          setState(() {
            _highlighted = highlight;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(widget.image, width: _imageSize, height: _imageSize),
              Text(
                widget.text,
                textAlign: TextAlign.right,
                style: TextStyle(
                    height: 1,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: AppFonts.Palanquin,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        )
      ),
    );
  }
}