import 'package:bottom_naviation_bar/bottom_navigation_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
