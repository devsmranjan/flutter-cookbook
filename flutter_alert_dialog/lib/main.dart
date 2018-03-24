import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Alert Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Alert Demo"),
        ),
        body: new MyHomeBody(),
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        AlertDialog alert = new AlertDialog(
          title: new Text("My Alert"),
          content: new Text("Do you want to sign out?"),
          actions: <Widget>[
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("Cancel")),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(); //Do something...
                },
                child: new Text("Ok"))
          ],
        );

        showDialog(
          context: context,
          child: alert,
          barrierDismissible: false,
        );
      },
      child: new Text("Click me"),
    );
  }
}
