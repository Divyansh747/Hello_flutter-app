import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatelessWidget{
@override
Widget build(BuildContext context) {
 return Material(
    //color: Colors.cyan,

     child: Center(
       child: Container(
         alignment: Alignment.center,
         color: Colors.cyan,
         width: 380,
         height: 100,
       child: Text(
         generateLuckyNumber(),
         textDirection: TextDirection.ltr,
         style: TextStyle(color: Colors.white, fontSize: 32.0),
       ),
     ),

   )

 );
}

String generateLuckyNumber(){

  var random = Random();
  int luckyNumber = random.nextInt(10);

  return "Your Lucky Number: $luckyNumber";
}

}