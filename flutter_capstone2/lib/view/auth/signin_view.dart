import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/custom_buttons.dart';
import 'package:flutter_capstone2/view/common/custom_textfield.dart';
import 'package:flutter_capstone2/viewmodel/signin_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  // Reusable text style function
  TextStyle _textStyle(
      {Color color = Colors.white,
      double fontSize = 17,
      FontWeight fontWeight = FontWeight.w400,
      double height = 0.08,
      double letterSpacing = -0.43,
      TextDecoration? decoration = TextDecoration.none,
      Color? decorationColor = Colors.white,
      TextDecorationStyle? decorationStyle = TextDecorationStyle.solid}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle);
  }

  @override
  Widget build(BuildContext context) {
    final signInViewModel = context.watch<SignInViewModel>();

    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24.0,
                  right: 24.0,
                  bottom: 24.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage('assets/images/capstoneAppIcon.png'),
                      width: 40),
                  Text(
                    "  Feel Good",
                    style: _textStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Welcome Back!",
                style: _textStyle(
                    fontSize: 13,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              SizedBox(height: 60),
              CustomTextfield(
                  text: "Email", controller: signInViewModel.emailController),
              SizedBox(height: 20),
              CustomTextPswfield(
                  text: "Password",
                  controller: signInViewModel.passwordController),
              SizedBox(height: 40),
              CustomButton(
                  text: "Sign In",
                  onPressed: () => context.go('/home'),
                  width: 300),
              SizedBox(height: 20),
              CustomTransparentButton(
                  text: "Create New Account",
                  onPressed: () => context.go('/signup'),
                  width: 300),
              SizedBox(height: 20),
              Text(
                "Forgot Password?",
                style: _textStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              )
            ]),
          )
        ],
      ),
    );
  }
}
