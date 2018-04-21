import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// At first add, cached_network_image: "^0.4.0" in dependencies at pubspec.yaml
//import 'package:cached_network_image/cached_network_image.dart'



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cached Image',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Cached Image"),
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
      child: new CachedNetworkImage(imageUrl: 'https://preview.ibb.co/jHxTJH/smruti_ranjan_rana.jpg',
      placeholder: new CircularProgressIndicator()),
    );
  }
}


