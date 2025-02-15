import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/custom_buttons.dart';
import 'package:go_router/go_router.dart';

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

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  double _imageOpacity = 0.0;
  double _textOpacity = 0.0;
  double _buttonOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimations();
  }

  void _startAnimations() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _imageOpacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _textOpacity = 1.0;
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _buttonOpacity = 1.0;
      });
    });
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
                AnimatedOpacity(
                  opacity: _imageOpacity,
                  duration: const Duration(milliseconds: 500),
                  child: Image(
                    image: AssetImage('assets/images/capstoneAppIcon.png'),
                    width: 120,
                  ),
                ),
                SizedBox(height: 30),
                AnimatedOpacity(
                  opacity: _textOpacity,
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    "Feel Good Here",
                    style: _textStyle(
                      fontSize: 21,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 120),
                AnimatedOpacity(
                  opacity: _buttonOpacity,
                  duration: const Duration(milliseconds: 500),
                  child: CustomButton(
                    text: "Continue",
                    onPressed: () => context.go('/signup'),
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
