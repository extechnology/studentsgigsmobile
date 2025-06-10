import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for TextInputFormatter

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final IconData? iconTrailing;
  final Color? iconColor;
  final TextEditingController? controller;
  final bool? isObscured;
  final bool? enabled;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  CustomTextField({
    super.key,
    this.hintText,
    this.iconTrailing,
    this.iconColor,
    this.controller,
    this.isObscured = false,
    this.enabled = true,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.maxLines = 1,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      enabled: enabled,
      controller: controller,
      obscureText: isObscured ?? false,
      cursorColor: Colors.black,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black26),
        focusColor: Colors.white,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.black26),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        suffixIcon:
            iconTrailing != null ? Icon(iconTrailing, color: iconColor) : null,
        counterText: '', // Removes the counter for maxLength
      ),
    );
  }
}
