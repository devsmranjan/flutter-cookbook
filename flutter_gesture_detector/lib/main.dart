import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gesture Detector',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Gesture Detector"),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _detectData = '';

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(_detectData),
        new GestureDetector(
          child: new Container(
            padding: new EdgeInsets.all(12.0),
            decoration: new BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: new BorderRadius.circular(2.0),
            ),
            child: new Text('Click me!'),
          ),
          onTap: () {
            setState(() {
              _detectData = "Tapped";
            });
          },
          onDoubleTap: () {
            setState(() {
              _detectData = "Double Tapped";
            });
          },
          onLongPress: () {
            setState(() {
              _detectData = "Long Pressed";
            });
          },
        )
      ],
    ));
  }
}
