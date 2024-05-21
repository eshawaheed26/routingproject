import 'dart:async';
import 'package:final_paper/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyLoginPage()),
      );
    });

    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 148, 176),
      body: Center(
        child: Text(
          "Final  Year Examination",
          style: TextStyle(fontSize: 40, fontFamily: 'MyCustom'), 
        ),
      ),
    );
  }
}
