import 'package:flutter/material.dart';
import './nonscrollablelist.dart';
import './scrollablelist.dart';
import './remotesourcelist.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Lists App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new VeryLargeListHolder(),
    );
  }
}

