import 'package:compod_app/forms/controller/internation_controller.dart';
import 'package:compod_app/forms/views/components/internation_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormsTile extends StatefulWidget {
  FormsTile({required this.type, Key? key}) : super(key: key);

  static const _size = 100.0;
  static const _imageSize = 48.0;
  final InternationType type;

  @override
  _FormsTileState createState() => _FormsTileState();
}

class _FormsTileState extends State<FormsTile> {
  var _highlighted = false;


  @override
  Widget build(BuildContext context) {
  final InternationController controller = Get.find();

    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 2, offset: Offset(0, 2))],
        border: Border.all(color: _highlighted ? Get.theme.colorScheme.secondaryVariant : Colors.white.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: Alignment(0, 0.4), end: Alignment.bottomCenter, colors: [Get.theme.primaryColor, Get.theme.primaryColorDark]),
      ),
      height: FormsTile._size,
      child: MaterialButton(
          onPressed: () => controller.selectInternationType(widget.type),
          onHighlightChanged: (highlight) => setState(() => _highlighted = highlight),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(widget.type.image, width: FormsTile._imageSize, height: FormsTile._imageSize),
                Text(widget.type.text.toUpperCase(), textAlign: TextAlign.right, style: Get.textTheme.button)
              ],
            ),
          )),
    );
  }
}
