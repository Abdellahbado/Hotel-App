import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test18/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return (snapshot.hasData)
              ? Column(children: [
                  Text('signed in'),
                  ElevatedButton(
                    onPressed: () => FirebaseAuth.instance.signOut(),
                    child: Text('signout'),
                  ),
                ])
              : LoginScreen();
        },
      ),
    );
  }
}
