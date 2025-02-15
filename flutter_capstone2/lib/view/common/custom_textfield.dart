import 'package:flutter/material.dart';

// Reusable text style function
TextStyle _textStyle({
  Color color = Colors.white,
  double fontSize = 17,
  FontWeight fontWeight = FontWeight.w400,
  double height = 0.08,
  double letterSpacing = -0.43,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
  );
}

InputDecoration _inputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(color: Colors.white70),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
  );
}

class CustomTextfield extends StatelessWidget {
  final String text;
  final TextEditingController controller;

  const CustomTextfield(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        decoration: _inputDecoration(text),
        style: _textStyle(color: Colors.white),
      ),
    );
  }
}

class CustomTextPswfield extends StatelessWidget {
  final String text;
  final TextEditingController controller;

  const CustomTextPswfield(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: TextField(
          controller: controller,
          obscureText: true,
          decoration: _inputDecoration(text),
          style: _textStyle(color: Colors.white),
        ));
  }
}
