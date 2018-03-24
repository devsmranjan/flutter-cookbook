import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Image from Network',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Image from Network"),
        ),
        body: new Image.network('https://preview.ibb.co/jHxTJH/smruti_ranjan_rana.jpg',),
      ),
    );
  }
}

