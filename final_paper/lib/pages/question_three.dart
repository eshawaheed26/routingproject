import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuestionThree());
}

class MyQuestionThree extends StatelessWidget {
  const MyQuestionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question Three'),
          backgroundColor: const Color.fromARGB(255, 169, 201, 216),
        ),
      ),
    );
  }
}
  