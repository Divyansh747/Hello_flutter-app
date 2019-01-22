import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "Strawberry",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                    Expanded(
                        child: Text(
                          "Banana",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "Mango",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                    Expanded(
                        child: Text(
                          "Apple",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                  ],
                ),
                PcImageAsset(),
                FruitBookButton()
              ],
            )));
  }
}

class PcImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/pc.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
    return Container(child: image,);
  }
}

class FruitBookButton extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top:30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.red,
        child: Text(
            "Book Your Fruits",
            style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w700
        ),
        ),

        elevation: 6.0,
        onPressed: (){
          bookFruit(context);
        },
      ),
    );

  }

  void bookFruit(BuildContext context){
    var alertDialog = AlertDialog(
    title: Text("Fruits Booked Successfully"),
    content: Text("Have a healthy day :)"),
    );

    showDialog(
        context:context,
    builder: (BuildContext context) {
      return alertDialog;
    }
    );
  }

}