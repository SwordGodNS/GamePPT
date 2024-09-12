import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'RetroGaming',
    ),
    home: const HomePage(),
  ));
}