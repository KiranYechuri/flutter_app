import 'package:flutter/material.dart';
import 'package:flutter_app/bottomNavigationBar.dart';
import 'package:flutter_app/myTabbar.dart';
import 'package:flutter_app/screens/checkboxPage.dart';
import 'package:flutter_app/screens/drawerScreen.dart';
import 'package:flutter_app/screens/dropDownPage.dart';
import 'package:flutter_app/screens/first_screen.dart';
import 'package:flutter_app/screens/preferences.dart';
import 'package:flutter_app/screens/radioButtonsPage.dart';
import 'package:flutter_app/screens/second_screen.dart';
import 'package:flutter_app/screens/showDataFromNetwork.dart';
import 'package:flutter_app/screens/switchPage.dart';
import 'package:flutter_app/screens/webview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ShowDataFromNetwork.showDataRoute,
      routes: {
        '/': (context) => FirstScreen(),
        SecondScreen.secondPageRoute: (context) =>
            SecondScreen('Second screen'),
        WebviewScreen.webPageRoute: (context) => WebviewScreen(),
        ShowDataFromNetwork.showDataRoute: (context) => ShowDataFromNetwork()
      },
      debugShowCheckedModeBanner: false,
      title: "Drawer Widget",
    );
  }
}
