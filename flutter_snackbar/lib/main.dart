import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Snackbar Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Snackbar demo"),
        ),

        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(onPressed: () {
        final snackBar = new SnackBar(
          content: new Text('Yay! A SnackBar!'),
          action: new SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change!
            },
          ),
        );


        Scaffold.of(context).showSnackBar(snackBar);
      },

        child: new Text("Show Snackbar"),
      ),
    );
  }

}




