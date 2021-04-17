import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/photo_model.dart';
import 'package:http/http.dart' as http;

class ShowDataFromNetwork extends StatefulWidget {
  static String showDataRoute = '/showData';
  @override
  _ShowDataFromNetworkState createState() => _ShowDataFromNetworkState();
}

class _ShowDataFromNetworkState extends State<ShowDataFromNetwork> {
  List<PhotoModel> photoModelList = List();
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    getPhotosFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Showing Data from API"),
      ),
      body: Center(
        child: !isLoaded
            ? CircularProgressIndicator()
            : ListView.builder(itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(photoModelList[index].title),
                    leading: Image.network(photoModelList[index].thumbnailUrl),
                  ),
                );
              }),
      ),
    );
  }

  Future<PhotoModel> getPhotosFromAPI() async {
    var data =
        await http.get(Uri.https('jsonplaceholder.typicode.com', '/photos'));
    var listMap = json.decode(data.body) as List;
    photoModelList = listMap.map((item) => PhotoModel.fromJSON(item)).toList();
    setState(() {
      isLoaded = true;
    });
  }
}
