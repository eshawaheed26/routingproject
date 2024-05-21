import 'package:final_paper/pages/question_one.dart';
import 'package:final_paper/pages/question_three.dart';
import 'package:final_paper/pages/question_two.dart';
import 'package:final_paper/pages/question_four.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuestionPage());
}

class MyQuestionPage extends StatelessWidget {
  const MyQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question Page'),
          backgroundColor: const Color.fromARGB(255, 191, 179, 194),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyQuestionOne()),
    );
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.fromLTRB(36, 30, 36, 30),
    backgroundColor: const Color.fromARGB(255, 167, 124, 156),
  ),
  child: const Text('Question One', style: TextStyle(fontSize: 18, color: Colors.white)), 
),
const SizedBox(height: 10,),
   ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyQuestionTwo()),
    );
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.fromLTRB(36, 30, 36, 30),
    backgroundColor: const Color.fromARGB(255, 167, 124, 156),
  ),
  child: const Text('Question Two', style: TextStyle(fontSize: 18, color: Colors.white)), 
),
const SizedBox(height: 10,),
   ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyQuestionThree()),
    );
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(30),
    backgroundColor: const Color.fromARGB(255, 167, 124, 156),
  ),
  child: const Text('Question Three', style: TextStyle(fontSize: 18, color: Colors.white)), 
),
const SizedBox(height: 10,),
   ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyQuestionFour()),
    );
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.fromLTRB(34, 30, 34, 30),
    backgroundColor: const Color.fromARGB(255, 167, 124, 156),
  ),
  child: const Text('Question Four', style: TextStyle(fontSize: 18, color: Colors.white)), 
),

            ],
          ),
        ),
      ),
    );
  }
}
