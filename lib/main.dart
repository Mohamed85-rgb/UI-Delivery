// ignore_for_file: prefer_const_constructors

import 'package:delivery/screens/home.dart';
import 'package:delivery/screens/login%20screen.dart';
import 'package:flutter/material.dart';

import 'screens/Register screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:loginscreen(),debugShowCheckedModeBanner: false,
    );
  }
}

