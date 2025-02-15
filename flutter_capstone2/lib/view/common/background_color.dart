import 'package:flutter/material.dart';
// https://api.flutter.dev/flutter/painting/LinearGradient-class.html

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(255, 128, 199, 197),
            Color.fromARGB(255, 65, 66, 104),
          ],
          tileMode: TileMode.mirror,
        ),
      )),
    );
  }
}
