import 'package:flutter/material.dart';

class HomeTileGrid extends GridView {
  HomeTileGrid({required double margin, required List<Widget> buttonList})
      : super(
          padding: EdgeInsets.symmetric(horizontal: margin),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: margin, crossAxisSpacing: margin),
          children: buttonList,
        );
}
