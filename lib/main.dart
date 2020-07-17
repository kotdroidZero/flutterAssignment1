// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/button.dart';
import 'package:flutter_assignment/mytext.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text="I am dynamic";
  num count = 0;

  void _changeText() {
    setState(() {
      count++;
      text = "I am pressed $count times";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
              child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Assignment",
            ),
          ),
          body: Center(
                      child: Container(
                        height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MyText(
                    text,
                  ),
                  MyButton(_changeText)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
