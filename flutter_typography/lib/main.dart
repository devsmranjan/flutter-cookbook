import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Typography',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Typography"),
        ),
        body: new MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text("Display 4", style: Theme.of(context).textTheme.display4),
        new Text("Display 3", style: Theme.of(context).textTheme.display3),
        new Text("Display 2", style: Theme.of(context).textTheme.display2),
        new Text("Display 1", style: Theme.of(context).textTheme.display1),
        new Text("Headline", style: Theme.of(context).textTheme.headline),
        new Text("Title", style: Theme.of(context).textTheme.title),
        new Text("Subhead", style: Theme.of(context).textTheme.subhead),
        new Text("Body 2", style: Theme.of(context).textTheme.body2),
        new Text("Body 1", style: Theme.of(context).textTheme.body1),
        new Text("Button", style: Theme.of(context).textTheme.button),
        new Text("Caption", style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}

