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

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadowColor: Color.fromARGB(255, 55, 56, 95)),
          child: Text(text,
              style: _textStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 65, 66, 104)))),
    );
  }
}

class CustomDarkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomDarkButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 65, 66, 104),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadowColor: Color.fromARGB(255, 55, 56, 95)),
          child: Text(text,
              style: _textStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
    );
  }
}

class CustomTransparentButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomTransparentButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            side: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          child: Text(text,
              style: _textStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
    );
  }
}
