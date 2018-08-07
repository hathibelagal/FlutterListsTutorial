import 'package:flutter/material.dart';

class NonScrollableListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<RaisedButton> myItems = new List();
    myItems.add(new RaisedButton(
        child: new Text("Twitter"),
        onPressed: (){}
    ));
    myItems.add(new RaisedButton(
        child: new Text("Facebook"),
        onPressed: (){}
    ));
    myItems.add(new RaisedButton(
        child: new Text("Reddit"),
        onPressed: (){}
    ));

    Column column = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: myItems
    );

    return new Scaffold(
        appBar: new AppBar(
            title: new Text("NonScrollableListDemo")
        ),
        body: column
    );
  }
}