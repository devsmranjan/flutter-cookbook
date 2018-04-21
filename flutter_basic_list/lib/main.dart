import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic List"),
        ),
        body: new MyHomeBody(),
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.forward),
          title: new Text("Forward Icons"),
          trailing: new Icon(Icons.favorite),
          onTap: () {
            //actions here
          },
        ),
        new ListTile(
          leading: new Icon(Icons.message),
          title: new Text("Message Icons"),
          trailing: new Icon(Icons.favorite),
          onTap: () {
            //actions here
          },
        ),
        new ListTile(
          leading: new Icon(Icons.send),
          title: new Text("Send Icons"),
          trailing: new Icon(Icons.favorite),
          onTap: () {
            //actions here
          },

        ),
        new ListTile(
          leading: new Icon(Icons.print),
          title: new Text("Print Icons"),
          trailing: new Icon(Icons.favorite),
          onTap: () {
            //actions here
          },
        ),
        new ListTile(
          leading: new Icon(Icons.refresh),
          title: new Text("Refresh Icons"),
          trailing: new Icon(Icons.favorite),
          onTap: () {
            //actions here
          },
        ),
      ],
    );
  }
}


