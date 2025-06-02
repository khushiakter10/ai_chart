import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormWiget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? hintTxt;
  final String? labelText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hinStyleColor; // Ensure this is properly passed
  final TextStyle? labelTextColor;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  const CustomTextFormWiget({
    super.key,
    this.textStyle,
    this.controller,
    this.hintTxt,
    this.labelText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.hinStyleColor,
    this.labelTextColor,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly,
    this.fillColor, this.filled,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        hintText: hintTxt,
        hintStyle: hinStyleColor,
        focusedBorder: focusedBorder,
        enabledBorder: enabledBorder,
        errorBorder: errorBorder,
        border: border,
      ),
    );
  }
}
