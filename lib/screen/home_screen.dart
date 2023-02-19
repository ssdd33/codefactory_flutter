import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Flexible(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.loadUrl('https://blog.codefactory.ai');
                  }
                },
                icon: const Icon(
                  Icons.home,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.goBack();
                  }
                },
                icon: const Icon(Icons.arrow_back),
              ),
            )
          ],
        ),
        backgroundColor: Colors.orange,
        title: const Text('code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.goForward();
              }
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
