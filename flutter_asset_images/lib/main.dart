import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Asset Image',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Asset Image"),
        ),

        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var assetImage = new AssetImage('images/download.jpeg');
//    var image = new Image(image: assetImage, width: 48.0, height: 48.0,);
    return new Center(
      child: new Image.asset('images/download.jpeg'),
    )
    ;
  }
}

/*
* Create an images directory at the top of the project.
* Add  yourImage.jpg. (Note that wget doesn’t work for saving this binary file.)
* Update the pubspec.yaml file to include an assets tag. This makes the image available to your code.
* */

