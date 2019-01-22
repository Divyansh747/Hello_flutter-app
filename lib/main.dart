import "package:flutter/material.dart";


void main(){

  runApp(

      MaterialApp(
      title: "My Flutter App", //titleText
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World !"),),
        body: Material(
          color: Colors.lightGreenAccent,
          child:  Center(
            child: Text(
              "HELLO FLUTTER",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 42.0),
            ),//text
          ),
        ),
      ),
    )
  );//runapp
}