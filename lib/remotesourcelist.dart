import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VeryLargeListHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State<VeryLargeListHolder> {

  List questions;
  String endpoint = "https://api.stackexchange.com/2.2/questions?" +
      "pagesize=100&order=desc&sort=activity&site=stackoverflow";

  @override
  Widget build(BuildContext context) {
    
    ListView myList = ListView.builder(
        itemCount: questions == null ? 0 : questions.length,
        itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            title: Text(questions[index]["title"]),
            subtitle: Text("Asked by ${questions[index]["owner"]["display_name"]}")
          );
        }
    );
    
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("LargeListDemo")
        ),
        body: myList
    );
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    String rawData = (await http.get(endpoint)).body;
    Map jsonData = json.decode(rawData);
    
    setState(() {
      questions = jsonData["items"];
    });
  }
}