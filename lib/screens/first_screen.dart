import 'package:flutter/material.dart';
import 'package:flutter_app/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My First Screen'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondScreen.secondPageRoute);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => SecondScreen('Second Screen')));
              },
              child: Text("Go to Second screen"),
            ),
          ),
        ),
      ),
    );
  }
}
