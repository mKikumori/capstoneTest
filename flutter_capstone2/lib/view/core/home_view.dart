import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/bottom_navigation.dart';
import 'package:flutter_capstone2/view/common/home_scroller.dart';
import 'package:flutter_capstone2/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: Scaffold(
            bottomNavigationBar:
                Consumer<HomeViewModel>(builder: (context, viewModel, child) {
              return GlobalNavigationBar(
                currentIndex: viewModel.currentState,
                onItemTapped: (index) {
                  viewModel.updateNavIndex(index);
                  //viewModel.onNavBarPressed(context);
                },
              );
            }),
            body: Stack(
              children: [
                BackgroundColor(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: AssetImage(
                                  'assets/images/capstoneAppIcon.png'),
                              width: 40),
                          Text(
                            "  Feel Good",
                            style: _textStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Image(
                              image: AssetImage('assets/images/profilePic.png'),
                              width: 40)
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Finding Your Harmony",
                        style: _textStyle(
                            fontSize: 12,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 50),
                      HomeScroller(title: "HypMeditations", imagePaths: [
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png'
                      ]),
                      SizedBox(height: 30),
                      HomeScroller(
                          title: "Hyp Little Fairy Tales",
                          imagePaths: [
                            'assets/images/capstoneFairyTallePic1.png',
                            'assets/images/capstoneFairyTallePic2.png',
                          ]),
                      SizedBox(height: 30),
                      HomeScroller(title: "Feel Good TV", imagePaths: [
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png',
                        'assets/images/capstoneAudioPic.png',
                      ]),
                      SizedBox(height: 30),
                      HomeScroller(title: "Feel Good Podcast", imagePaths: [
                        'assets/images/capstonePodcastPic.png',
                        'assets/images/capstonePodcastPic.png',
                        'assets/images/capstonePodcastPic.png',
                        'assets/images/capstonePodcastPic.png',
                      ]),
                    ],
                  ),
                ),
              ],
            )));
  }
}
