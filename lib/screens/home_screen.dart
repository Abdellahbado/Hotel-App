import 'package:firebase_test18/screens/info_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAdded = false;
  void toggle() {
    setState(() {
      isAdded = !isAdded;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isAdded) {
      return MainScreen(toggle: toggle);
    } else {
      return Scaffold(
        appBar: AppBar(elevation: 0.0),
        body: const Center(
          child: Text(
            'you\'ve been added successfully',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      );
    }
    ;
  }
}
