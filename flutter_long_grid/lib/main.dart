import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Long grid',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Long Grid"),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
//  final List<String> items = new List<String>.generate(100, (index) => "item no $index");
  @override
  Widget build(BuildContext context) {
    return new GridView.count(crossAxisCount: 2,
      children: new List.generate(100, (index) {
        return new Center(
          child: new Text(
            '${index + 1}',
            style: Theme.of(context).textTheme.display3,
          ),
        );
      }),
    );
  }
}


