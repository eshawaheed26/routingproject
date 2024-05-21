import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp(
  options: const FirebaseOptions(
      apiKey: "AIzaSyASrCBeTOTnJM9K-DWfiyeSdQUwXeM2KqA",
  projectId: "final-paper-database",
  messagingSenderId: "6306179722",
  appId: "1:6306179722:web:1ee5282d2ba26690ad5b73",

  ),
);

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,      
      home: SplashScreen(), 
    );
  }
}
