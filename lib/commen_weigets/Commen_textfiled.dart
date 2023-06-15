import 'package:flutter/material.dart';

class Commen_TextFiled extends StatelessWidget {
  const Commen_TextFiled({
    Key? key,
    this.hintText,
    this.sicon,
    this.picon,
    this.filedcolor,
    this.ltext,
    this.controller,
    this.counter,
    this.ontap,
    this.mlength,
    this.ktype,
    this.validator,
    this.onchange,
  }) : super(key: key);
  final hintText;
  final sicon;
  final picon;
  final bool? filed = true;
  final filedcolor;
  final ltext;
  final controller;
  final counter;
  final void Function()? ontap;
  final mlength;
  final ktype;
  final String? Function(String?)? validator;
  final void Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: ontap,
      maxLength: mlength,
      keyboardType: ktype,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        suffixIcon: sicon,
        prefixIcon: picon,
        filled: filed,
        labelText: ltext,
        fillColor: filedcolor,
        counter: counter,
      ),
    );
  }
}
