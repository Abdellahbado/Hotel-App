import 'package:firebase_test18/screens/info_screen.dart';
import 'package:flutter/material.dart';

class ReservPage extends StatefulWidget {
  const ReservPage({super.key});

  @override
  State<ReservPage> createState() => _ReservPageState();
}

class _ReservPageState extends State<ReservPage> {
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
        body: AlertDialog(
        content: const Text('Reservation added successfully'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
      );
    }
    ;
  }
}
