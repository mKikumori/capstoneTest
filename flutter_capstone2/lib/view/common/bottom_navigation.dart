import 'package:flutter/material.dart';

class GlobalNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const GlobalNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // Common navigation theme
      type: BottomNavigationBarType.fixed,
      elevation: 1,
      backgroundColor: const Color.fromARGB(255, 47, 48, 78),
      // Selected menu item theme
      selectedIconTheme: const IconThemeData(color: Colors.white),
      selectedItemColor: const Color(0xFFFFFFFF),
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      // Unselected menu item theme
      unselectedIconTheme: const IconThemeData(color: Colors.white70),
      unselectedItemColor: const Color(0xB3FFFFFF),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white70,
      ),
      items: const [
        // change this to cupertino_icons
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Spotlight'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border), label: 'Wisdom'),
      ],
      currentIndex: currentIndex,
      onTap: onItemTapped, // Directly call the passed callback
    );
  }
}
