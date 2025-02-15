import 'package:flutter/material.dart';
import 'package:flutter_capstone2/view/common/background_color.dart';
import 'package:flutter_capstone2/view/common/bottom_navigation.dart';
import 'package:flutter_capstone2/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

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
              children: [BackgroundColor(), Center()],
            )));
  }
}
