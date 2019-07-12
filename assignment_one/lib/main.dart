// 1. Create a new Flutter App and output an AppBar with some text below it
// 2. Add a button which changes the text
// 3. Split the app into three widgets: App, TextControl, and Text

import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _shownText = "This is the text.";

  void _changeText(String newText) {
    setState(() {
      _shownText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment One'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            BelowAppBarText(_shownText),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
