import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/custom_buttons.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgroundColor(),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24.0,
                  right: 24.0,
                  bottom: 24.0,
                ),
              ),
              Image(
                  image: AssetImage('assets/images/capstoneAppIcon.png'),
                  width: 120),
              SizedBox(height: 30),
              Text(
                "Feel Good Here",
                style: _textStyle(
                    fontSize: 21,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 120),
              CustomButton(
                  text: "Continue",
                  onPressed: () => context.go('/signup'),
                  width: 300)
            ],
          ),
        ),
      ],
    ));
  }
}
