import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Local JSON',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Local JSON"),
      ),
      body: new Center(
        child: new FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('json_data/person.json'),
          builder: (context, snapshot) {
//            JSON Decode
          var myData = JSON.decode(snapshot.data.toString());
          return new ListView.builder(
            itemBuilder: (context, index) {
              return new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text('Name : ${myData[index]['name']}'),
                    new Text('Age : ${myData[index]['age']}'),
                    new Text('Height : ${myData[index]['height']}'),
                    new Text('Gender : ${myData[index]['gender']}'),
                  ],
                ),
              );
            },
            itemCount: myData == null ? 0 : myData.length,
          );
          },
        ),
      ),
    );
  }
}
