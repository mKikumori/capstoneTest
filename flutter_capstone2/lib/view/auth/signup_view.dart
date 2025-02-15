import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/custom_buttons.dart';
import 'package:flutter_capstone2/view/common/custom_textfield.dart';
import 'package:flutter_capstone2/viewmodel/signup_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
    final signInViewModel = context.watch<SignUpViewModel>();

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
              SizedBox(height: 30),
              Text(
                "Lets get you started...",
                style: _textStyle(
                    fontSize: 12,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              SizedBox(height: 60),
              CustomTextfield(
                  text: "Name", controller: signInViewModel.nameController),
              SizedBox(height: 20),
              CustomTextfield(
                  text: "Email", controller: signInViewModel.emailController),
              SizedBox(height: 20),
              CustomTextPswfield(
                  text: "Password",
                  controller: signInViewModel.passwordController),
              SizedBox(height: 60),
              CustomButton(
                  text: "Continue",
                  onPressed: () => context.go('/home'),
                  width: 300),
              SizedBox(height: 20),
              CustomTransparentButton(
                  text: "I have an account",
                  onPressed: () => context.go('/signin'),
                  width: 300)
            ]),
          )
        ],
      ),
    );
  }
}
