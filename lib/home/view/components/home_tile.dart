import 'dart:ui';

import 'package:compod_app/commons/app_colors.dart';
import 'package:compod_app/commons/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatefulWidget {
  HomeTile(this.image, this.text, {Key key}) : super(key: key);

  final String image;
  final String text;

  @override
  _HomeTileState createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  final double _size = 160;
  final double _imageSize = 64;

  bool _highlighted = false;

  void _buttonPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 2, offset: Offset(0, 2))],
        border: Border.all(color: _highlighted ? AppColors.green.withOpacity(0.6) : Colors.white.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: Alignment(0, 0.4), end: Alignment.bottomCenter, colors: [AppColors.buttonBlue1, AppColors.buttonBlue2]),
        // color: AppColors.buttonBlue,
      ),
      width: _size,
      height: _size,
      child: MaterialButton(
        onPressed: _buttonPressed,
        onHighlightChanged: (highlight) {
          setState(() {
            _highlighted = highlight;
          });
        },
        child: Column(
          children: [
            SizedBox(height: 32),
            Image.asset(widget.image, width: _imageSize, height: _imageSize),
            // Icon(Icons., size: _imageSize),
            Expanded(
              child: Center(
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1,
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: AppFonts.PalanquinDark,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
