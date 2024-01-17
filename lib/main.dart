import 'package:flutter/material.dart';
import 'package:modus/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class User {
  String name;
  String email;

  User({required this.name, required this.email});
}

class LocalArea {
  String name;
  double radius;

  LocalArea({required this.name, required this.radius});
}

class Cluster {
  String name;

  Cluster({required this.name});
}

class Business {
  String name;
  String description;

  Business({required this.name, required this.description});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUp(),
    );
  }
}


