import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fade In Images',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Fade In Images"),
        ),
        body: new MyHomeBody(),
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Stack(
        children: <Widget>[
          new CircularProgressIndicator(),
          new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              // add - transparent_image: "^0.1.0" at dependencies
              image: 'https://preview.ibb.co/jHxTJH/smruti_ranjan_rana.jpg')
        ],
      ),
    );
  }
}
