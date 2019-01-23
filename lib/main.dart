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
  var _continents = ['Asia','Europe','Africa','Others'];
  var _currentItemSelected = 'Asia';

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
           DropdownButton<String>(
             items: _continents.map((String dropDownStringItem){
               return DropdownMenuItem<String>(
                 value: dropDownStringItem,
                 child: Text(dropDownStringItem),
               );
             }).toList(),

             onChanged: (String newValueSelected){

               _onDropDownItemsSelected(newValueSelected);

             },

             value: _currentItemSelected, //This will print selected value
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

  void _onDropDownItemsSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}