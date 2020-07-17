import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function iAmPressed;
  MyButton(this.iAmPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Press Me!',
      ),
      onPressed: iAmPressed,
    );
  }
}
