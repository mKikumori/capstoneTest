import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// https://docs.flutter.dev/cookbook/lists/horizontal-list

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

class HomeScroller extends StatelessWidget {
  final String title;
  final List<String> imagePaths;

  const HomeScroller(
      {super.key, required this.title, required this.imagePaths});

  void _onItemTap(BuildContext context, int index) {
    context.go('/content/$title/$index');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: _textStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white)),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onItemTap(context, index),
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Stack(
                        children: <Widget>[
                          Container(width: 160, color: Colors.white),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                width: 140,
                                height: 180,
                                image: AssetImage(imagePaths[index])),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
