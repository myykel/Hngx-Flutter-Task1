import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Import the WebView package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Slack & GitHub App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Slack Name: myykel',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://ca.slack-edge.com/T05FFAA91JP-U05R8L0MVMZ-1742375011ef-512',
              width: 120,
              height: 120,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('GitHub Profile'),
                      ),
                      body: WebView(
                        initialUrl: 'https://github.com/myykel',
                      ),
                    );
                  },
                ));
              },
              child: Text('Open GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
