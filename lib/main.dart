import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_test18/auth/login.dart';
import 'package:firebase_test18/firebase_options.dart';
import 'package:firebase_test18/home.dart';
import 'package:firebase_test18/screens/home_screen.dart';
import 'package:firebase_test18/screens/hotel_home.dart';
import 'package:firebase_test18/screens/info_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
