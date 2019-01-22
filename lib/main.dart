import "package:flutter/material.dart";


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //ToRemoveDebugLogo
    title: "Exploring UI widgets",
    home: Scaffold(
      body: getListView(),
    ),
  ));
}

Widget getListView() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading:  Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),

      ListTile(
        leading:  Icon(Icons.local_car_wash),
        title: Text("Car Wash"),
        subtitle: Text("Wash Your Car Here !"),
        trailing: Icon(Icons.grain),
        onTap: () {
          debugPrint("Car Wash tapped");
        },
      ),

      ListTile(
        leading:  Icon(Icons.wifi),
        title: Text("Wifi"),
        subtitle: Text("Turn On Your Wifi"),
        trailing: Icon(Icons.settings_applications),
        onTap: () {
          debugPrint("Turning On Wifi");
        },
      ),
    ],
  );

return listView;
}
