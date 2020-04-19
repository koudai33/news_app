import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "news_app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("news"),
          ),
        ));
  }
}
