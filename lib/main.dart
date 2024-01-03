import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView App',
      home: WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final String url = "https://developers.facebook.com/docs/"; // Replace with your desired URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView App'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.disabled,
        onWebViewCreated: (WebViewController webViewController) {
          // You can use the controller to interact with the WebView
          // For example, you can load other URLs dynamically
        },
        onProgress: (int progress) {
          // Handle WebView loading progress
        },
        onPageStarted: (String url) {
          // Handle WebView page start
        },
        onPageFinished: (String url) {
          // Handle WebView page finish
        },
      ),
    );
  }
}
