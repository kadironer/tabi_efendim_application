import 'package:flutter/material.dart';
import 'package:tabi_efendim_application/home_page.dart';
import 'package:tabi_efendim_application/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabi Efendim',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
