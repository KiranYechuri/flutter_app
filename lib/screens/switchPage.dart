import 'package:flutter/material.dart';

class MySwitchWidget extends StatefulWidget {
  @override
  _MySwitchWidgetState createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Switch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
            value: isChanged,
            onChanged: (val) {
              print('Switch value changed $val');
              setState(() {
                isChanged = val;
              });
            },
            activeColor: Colors.green,
            inactiveThumbColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
