import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatelessWidget {
  static String webPageRoute = '/webviewPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://pub.dev",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
