import 'package:flutter/material.dart';
import 'package:transmobi/login_screen.dart';
import 'package:transmobi/signup_screen.dart';
import 'package:transmobi/locations.dart';
import 'package:transmobi/welcome.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transmobi',
      home: Welcome(),
    );
  }
}

