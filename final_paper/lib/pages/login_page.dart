import 'package:final_paper/question_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyLoginPage());
}

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          backgroundColor: const Color.fromARGB(255, 191, 179, 194),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 202, 195, 195),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 202, 195, 195),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
            ),
            obscureText: true,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyQuestionPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(20, 17, 20, 17),
            backgroundColor: const Color.fromARGB(255, 71, 114, 179),
          ),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
