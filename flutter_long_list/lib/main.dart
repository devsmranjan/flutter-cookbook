import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Long List',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Long List"),
        ),
        body: new MyHomeBody(),
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  final List<String> items = new List<String>.generate(1000, (index) {
    return "Item no $index";
  });

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, index) {
      return new ListTile(
        title: new Text('${items[index]}'),
        onTap: () {
//          your actions are here.
        },
      );
    });
  }
}
