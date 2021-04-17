import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  @override
  _MyTabbarState createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Tabbar'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "First",
                icon: Icon(Icons.headset),
              ),
              Tab(
                text: "Second",
                icon: Icon(Icons.remove_circle),
              ),
              Tab(
                text: "Third",
                icon: Icon(Icons.art_track),
              )
            ],
          ),
        ),
      ),
    );
  }
}
