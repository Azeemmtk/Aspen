import 'package:flutter/material.dart';
import 'package:shoes/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(fontFamily: 'assets/font/Airbnb Cereal App Black.ttf'),
        debugShowCheckedModeBanner: false,
        home: Splash()),
  );
}
