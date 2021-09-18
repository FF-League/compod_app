import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompodFormField extends TextFormField {
  CompodFormField({Key? key})
      : super(
          validator: (value) => (value?.isEmpty ?? true) ? 'Este campo deve ser preenchido' : null,
          key: key,
          style: Get.textTheme.bodyText2,
          cursorColor: Get.theme.colorScheme.secondary,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Get.theme.colorScheme.secondary),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            fillColor: Colors.blueGrey.shade50,
            filled: true,
          ),
        );
}
