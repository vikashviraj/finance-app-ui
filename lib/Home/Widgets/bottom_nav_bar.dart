import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color(0xFF171A3F),
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedLabelStyle: const TextStyle(height: 1.5),
        unselectedLabelStyle: const TextStyle(height: 1.5),
        enableFeedback: false,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/person-inactive.png'),
              label: 'Snapshot'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/holding.png'), label: 'Holdings'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/money.png'),
              label: 'Investments'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/person.png'), label: 'Profile'),
        ]);
  }
}
