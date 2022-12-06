import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
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
