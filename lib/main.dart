import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Stateful Widget",
        home: FavouriteCountry(),
      ) // MaterialApp
  );

}

class FavouriteCountry extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _FavouriteCountryState();
  }
}

class _FavouriteCountryState extends State<FavouriteCountry> {
  String nameCountry = "";

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  nameCountry = userInput;
                });

              },
            ),
           Padding(
               padding: EdgeInsets.all(30.0),
               child: Text(
              "Your best country is $nameCountry",
              style: TextStyle(fontSize: 20.0),
            )
           )
            ],
        ),
      ),
    );
  }

}