// lib/features/news/presentation/pages/webview_page.dart

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatelessWidget {
  final String url;

  WebviewPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article'),
      ),
      body: Text(url),
      // body: WebView(
      //   initialUrl: url,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
