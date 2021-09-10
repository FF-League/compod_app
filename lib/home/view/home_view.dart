import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/home/controller/home_controller.dart';
import 'package:compod_app/home/view/components/home_tile.dart';
import 'package:compod_app/home/view/components/home_tile_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final _buttonList = [
    HomeTile(type: HomeTileType.Doctor, text: 'Solicitar atendimento'),
    HomeTile(type: HomeTileType.Heart, text: 'Seja um voluntário'),
    HomeTile(type: HomeTileType.Donate, text: 'Doações'),
  ];

  @override
  Widget build(BuildContext context) {
    final _ = Get.put(HomeController());

    final _margin = (MediaQuery.of(context).size.width - 320) / 3;
    final _height = max((_buttonList.length / 2).ceil() * (_margin + 160), (context.height - (6 * 16.0 + 2 * 80)));
    return Scaffold(
      body: ListView(
        children: [
          Padding(child: Image.asset(AppImages.WhiteLogo, height: 80), padding: EdgeInsets.all(16)),
          SizedBox(height: _height, child: HomeTileGrid(margin: _margin, buttonList: _buttonList)),
          Padding(padding: EdgeInsets.all(16), child: Image.asset(AppImages.OsascoLogo, height: 80)),
        ],
      ),
    );
  }
}
