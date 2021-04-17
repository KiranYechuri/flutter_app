import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        currentIndex: _currentPosition,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text("Favorite")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded), title: Text("Unit")),
        ],
        onTap: (index) {
          setState(() {
            _currentPosition = index;
          });
        },
      ),
    );
  }
}
