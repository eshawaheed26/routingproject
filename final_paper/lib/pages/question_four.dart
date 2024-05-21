import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuestionFour());
}

class MyQuestionFour extends StatelessWidget {
  const MyQuestionFour({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question Four'),
          backgroundColor: const Color.fromARGB(255, 169, 201, 216),
        ),
      ),
    );
  }
}
  