import 'package:flutter/material.dart';
import 'package:fiqhanflutter/Boarding.dart';
import 'package:fiqhanflutter/page1.dart';
import 'package:fiqhanflutter/page2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'boarding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: boarding(),
    );
  }
}


  