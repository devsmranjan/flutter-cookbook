import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Row Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter Row Demo"),
        ),

        body: new Center(
          child: new Row(
            children: <Widget>[

              new Container(
                padding: new EdgeInsets.all(20.00),
                child: new Text("Flutter 1"),
              ),
              new Container(
                padding: new EdgeInsets.all(20.00),
                child: new Text("Flutter 2"),
              ),
              new Container(
                padding: new EdgeInsets.all(20.00),
                child: new Text("Flutter 3"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

//Inside row ....
// Can use Expanded class.

