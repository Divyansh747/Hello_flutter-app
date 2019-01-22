import "package:flutter/material.dart";
import './app_screens/first_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //ToRemoveDebugLogo
    title: "Exploring UI widgets",
    home: FirstScreen()
  ));
}