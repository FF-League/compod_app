import 'package:compod_app/commons/compod_images.dart';
import 'package:compod_app/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTile extends StatefulWidget {
  const HomeTile({required this.type, required this.text, Key? key}) : super(key: key);

  final HomeTileType type;
  final String text;
  static const size = 160.0;
  static const imageSize = 64.0;

  @override
  _HomeTileState createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  var _highlighted = false;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Container(
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 2, offset: Offset(0, 2))],
        border: Border.all(color: _highlighted ? Get.theme.colorScheme.secondaryVariant.withOpacity(0.6) : Colors.white.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: const Alignment(0, 0.4), end: Alignment.bottomCenter, colors: [Get.theme.primaryColor, Get.theme.primaryColorDark]),
      ),
      width: HomeTile.size,
      height: HomeTile.size,
      child: MaterialButton(
        onPressed: () => controller.tileAction(widget.type),
        onHighlightChanged: (highlight) => setState(() => _highlighted = highlight),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Image.asset(widget.type.image, width: HomeTile.imageSize, height: HomeTile.imageSize),
            Expanded(child: Center(child: Text(widget.text.toUpperCase(), textAlign: TextAlign.center, style: Get.textTheme.button?.copyWith(height: 1.5))))
          ],
        ),
      ),
    );
  }
}

enum HomeTileType {
  doctor,
  heart,
  donate,
  anjinho,
}

extension on HomeTileType {
  String get image {
    switch (this) {
      case HomeTileType.doctor: return CompodImages.doctor;
      case HomeTileType.donate: return CompodImages.donate;
      case HomeTileType.heart: return CompodImages.heart;
      case HomeTileType.anjinho: return CompodImages.anjinho;
    }
  }
}
