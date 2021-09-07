import 'package:compod_app/commons/compod_colors.dart';
import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/home/view/components/home_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final _buttonList = [
    HomeTile(AppImages.Doctor, 'Solicitar atendimento'),
    // HomeTile(AppImages.Anjinho, 'Botão Anjinho'),
    HomeTile(AppImages.Heart, 'Seja um voluntário'),
    HomeTile(AppImages.Donate, 'Doações'),
  ];

  final Widget _logo = Padding(
    child: Image.asset(AppImages.WhiteLogo, height: 80),
    padding: EdgeInsets.all(16),
  );

  final Widget _footer = Padding(
    child: Image.asset(AppImages.OsascoLogo, height: 80),
    padding: EdgeInsets.all(16),
  );

  @override
  Widget build(BuildContext context) {
    final _margin = (MediaQuery.of(context).size.width - 320) / 3;
    final gridView = GridView(
      padding: EdgeInsets.symmetric(horizontal: _margin),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: _margin, crossAxisSpacing: _margin),
      children: _buttonList,
    );
    final _buttonsBox = SizedBox(height: (_buttonList.length / 2).ceil() * (_margin + 160), child: gridView);
    return Container(
      // color: CompodColors.backgroundBlue,
      child: ListView(
        children: [
          _logo,
          _buttonsBox,
          _footer,
        ],
      ),
    );
  }
}
