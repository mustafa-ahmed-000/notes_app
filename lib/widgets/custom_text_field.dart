import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  Function(String) onChanged;
  Color textFieldColor;
  Color hintTextColor;
  TextEditingController? controller;
  final int maxLines;
  CustomTextField(
      {required this.hintText,
      this.maxLines = 1,
      this.isPassword = false,
      required this.onChanged,
      this.textFieldColor = Colors.white,
      this.hintTextColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        onChanged: onChanged,
        maxLines: maxLines,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: textFieldColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: textFieldColor, width: 2),
          ),
        ),
      ),
    );
  }
}
