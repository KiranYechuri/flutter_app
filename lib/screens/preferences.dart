import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences extends StatefulWidget {
  @override
  _MySharedPreferencesState createState() => _MySharedPreferencesState();
}

class _MySharedPreferencesState extends State<MySharedPreferences> {
  TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getDataFromSP();
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _editingController,
            decoration: InputDecoration(
              hintText: "Enter your Name",
            ),
          ),
          RaisedButton(
            onPressed: () {
              saveDataInSP(_editingController.text);
            },
            child: Text('Save Data to user defaults'),
          )
        ],
      ),
    );
  }
}

void saveDataInSP(String _name) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("Name", _name);
  print('Name Saved $_name');
  sharedPreferences.reload();
}

getDataFromSP() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String userName = sharedPreferences.getString("Name");
  print('Saved name is $userName');
}
