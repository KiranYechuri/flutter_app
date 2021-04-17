import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String text;
  static String secondPageRoute = '/SecondPage';
  SecondScreen(String text) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Second Screen'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Center(child: Text('Message from first screen $text')),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
