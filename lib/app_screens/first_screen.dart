import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
@override
Widget build(BuildContext context) {
 return Material(
    color: Colors.lightGreenAccent,
    child: Center(
      child: Text(
        "HELLO FLUTTER",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 42.0),
      ), //text
    ),
  );
}
}