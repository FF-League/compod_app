import 'package:compod_app/hospitalization/controller/hospitalization_controller.dart';
import 'package:compod_app/hospitalization/models/hospitalization_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormsTile extends StatefulWidget {
  const FormsTile({required this.type, Key? key}) : super(key: key);

  static const _size = 100.0;
  static const _imageSize = 48.0;
  final HospitalizationType type;

  @override
  _FormsTileState createState() => _FormsTileState();
}

class _FormsTileState extends State<FormsTile> {
  var _highlighted = false;

  @override
  Widget build(BuildContext context) {
  final HospitalizationController controller = Get.find();

    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 2, offset: Offset(0, 2))],
        border: Border.all(color: _highlighted ? Get.theme.colorScheme.secondaryVariant : Colors.white.withOpacity(0.6), width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: const Alignment(0, 0.4), end: Alignment.bottomCenter, colors: [Get.theme.primaryColor, Get.theme.primaryColorDark]),
      ),
      height: FormsTile._size,
      child: MaterialButton(
          onPressed: () => controller.selectHospitalizationType(widget.type),
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
