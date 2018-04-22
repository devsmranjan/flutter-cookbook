import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Ripple Effect',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Ripple Effect"),
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
        new InkWell(
          child: new Container(
            padding: new EdgeInsets.all(18.0),
            decoration: new BoxDecoration(
//                  color: Theme.of(context).accentColor,
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
