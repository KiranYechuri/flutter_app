import 'package:flutter/material.dart';

class MyCheckBoxPage extends StatefulWidget {
  @override
  _MyCheckBoxPageState createState() => _MyCheckBoxPageState();
}

class _MyCheckBoxPageState extends State<MyCheckBoxPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: isChecked,
            onChanged: (val) {
              print('Checked value is $val');
              setState(() {
                isChecked = val;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: isChecked,
            title: Text("Agree to Terms and Conditions"),
            onChanged: (val) {
              print('Checked value is $val');
              setState(() {
                isChecked = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
