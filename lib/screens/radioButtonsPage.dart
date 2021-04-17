import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int selectedPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
            value: 0,
            onChanged: (val) {
              setState(() {
                selectedPosition = val;
              });
            },
            groupValue: selectedPosition,
          ),
          Radio(
              value: 1,
              groupValue: selectedPosition,
              onChanged: (val) {
                setState(() {
                  selectedPosition = val;
                });
              }),
        ],
      ),
    );
  }
}
