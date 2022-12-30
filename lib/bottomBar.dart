import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile')
      ],
    );
  }
}
