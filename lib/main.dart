import 'package:flutter/material.dart';
import 'package:travel_planner_app/screens/firstscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',

      home:  FirstScreen(),
    );
  }
}
