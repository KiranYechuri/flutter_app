import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDownList extends StatefulWidget {
  @override
  _MyDropDownListState createState() => _MyDropDownListState();
}

class _MyDropDownListState extends State<MyDropDownList> {
  var listItems = ["India", "BanGLADESH", "West Indies", "USA", "Russia"];
  var selectedItem = "India";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My DropDown page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              value: selectedItem,
              items: listItems.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
              onChanged: (item) {
                setState(() {
                  selectedItem = item;
                });
                print('Selected item $item');
              },
            ),
          ],
        ),
      ),
    );
  }
}
