import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("home");
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: const Center(
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
