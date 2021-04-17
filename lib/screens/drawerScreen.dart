import 'package:flutter/material.dart';

class MyAppDrawer extends StatefulWidget {
  @override
  _MyAppDrawerState createState() => _MyAppDrawerState();
}

class _MyAppDrawerState extends State<MyAppDrawer> {
  var list = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Chats'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  var currentItemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Layout'),
      ),
      body: list[currentItemSelected],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                color: Colors.greenAccent,
                child: Image.asset("images/AppstoreConnect.png"),
                alignment: Alignment.center,
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_filled),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 0;
                });
              },
            ),
            ListTile(
              title: Text("Chats"),
              leading: Icon(Icons.chat),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 1;
                });
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
