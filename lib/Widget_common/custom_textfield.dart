import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.black).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
          decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontFamily: semibold, color: textfieldGrey),
        isDense: true,
        fillColor: lightGrey,
        filled: true,
        border: InputBorder.none,
        focusedBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: redColor)),
      )),
      5.heightBox,
    ],
  );
}
