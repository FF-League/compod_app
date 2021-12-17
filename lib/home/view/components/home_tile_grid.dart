import 'package:flutter/material.dart';

class HomeTileGrid extends GridView {
  HomeTileGrid({Key? key, required double margin, required List<Widget> buttonList})
      : super(key: key,
          padding: EdgeInsets.symmetric(horizontal: margin),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: margin, crossAxisSpacing: margin),
          children: buttonList,
        );
}
