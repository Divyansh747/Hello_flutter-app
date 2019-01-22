import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatelessWidget{
@override
Widget build(BuildContext context) {
 return Material(
    color: Colors.cyan,
    child: Center(
      child: Text(
        generateLuckyNumber(),
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 42.0),
      ),
  ),
 );
}

String generateLuckyNumber(){

  var random = Random();
  int luckyNumber = random.nextInt(10);

  return "Your Lucky Number: $luckyNumber";
}

}