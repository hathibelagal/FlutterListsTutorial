import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScrollableListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> data = <String>["Twitter", "Reddit", "YouTube", "Facebook",
    "Vimeo", "GitHub", "GitLab", "BitBucket", "LinkedIn", "Medium",
    "Tumblr", "Instagram", "Pinterest"];

    List<RaisedButton> myWidgets = data.map((item) {
      return new RaisedButton(
          child: new Text(item),
          onPressed: () async {
            String url = "https://${item}.com";
            if(await canLaunch(url))
              await launch(url);
          }
      );
    }).toList();

    ListView myList = new ListView(
      children: myWidgets,
    );

    GridView myGrid = GridView.count(
        crossAxisCount: 2,
        children: myWidgets
    );

    return new Scaffold(
        appBar: new AppBar(
            title: new Text("ScrollableListDemo")
        ),
        body: myGrid
    );
  }

}