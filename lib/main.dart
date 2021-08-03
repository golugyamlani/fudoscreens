import 'package:flutter/material.dart';
import 'package:fudoscreens/WelcomeScreen/welcomeScreen.dart';
import 'package:fudoscreens/restaurant_page.dart';
import 'package:fudoscreens/screens/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
