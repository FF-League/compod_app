import 'dart:math';

import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/home/controller/home_controller.dart';
import 'package:compod_app/home/view/components/home_tile.dart';
import 'package:compod_app/home/view/components/home_tile_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetResponsiveView {
  HomeView({Key? key}) : super(key: key);

  static const _buttonList = [
    HomeTile(type: HomeTileType.doctor, text: 'Solicitar atendimento'),
    HomeTile(type: HomeTileType.heart, text: 'Seja um voluntário'),
    HomeTile(type: HomeTileType.anjinho, text: 'Cartilha'),
    HomeTile(type: HomeTileType.donate, text: 'Doações'),
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    final margin = (context.width - 320) / 3;
    final padding = 16.0;
    final height = max((_buttonList.length / 2).ceil() * (margin + 160), (context.height - (6 * padding + 2 * 80)));
    return Scaffold(
      body: ListView(
        children: [
          Padding(child: Image.asset(CompodImages.whiteLogo, height: 80), padding: EdgeInsets.all(padding)),
          SizedBox(height: height, child: HomeTileGrid(margin: margin, buttonList: _buttonList)),
          Padding(child: Image.asset(CompodImages.osascoLogo, height: 80), padding: EdgeInsets.all(padding)),
        ],
      ),
    );
  }
}
