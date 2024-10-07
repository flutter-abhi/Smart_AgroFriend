import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hello_krushi/Screens/slider.dart';
import 'package:hello_krushi/Screens/splashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:SliderPage()
    
    );
  }
}
