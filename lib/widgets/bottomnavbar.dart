import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Stream"),
        BottomNavigationBarItem(icon: Icon(Icons.task), label: "Classwork"),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined), label: "People"),
      ],
    );
  }
}