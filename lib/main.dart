import "package:flutter/material.dart";


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //ToRemoveDebugLogo
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List"),),
     body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Clicked!");
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You Just Tapped $item"),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(
    itemBuilder: (context, index) {

      return ListTile(
        leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
        onTap: (){
          showSnackBar(context, listItems[index]);
        },
      );
  }
    );
  return listView;
}


