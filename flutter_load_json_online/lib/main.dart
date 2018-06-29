import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JSON from Network',
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
  final dataUrl = "https://raw.githubusercontent.com/smruti-ranjan-rana/BPUT/master/bput-btech.json";
//  final dataUrl = "https://swapi.co/api/people";
  List data;

  @override
  void initState() {
    super.initState();
    this.getJSONData();
  }

  Future getJSONData() async {
    var response = await http.get(
//      Encode the Url
      Uri.encodeFull(dataUrl),
      headers: {"Accept" : "application/json"}
        );
    print(response.body);

    setState(() {
      var convertDataToJSON = JSON.decode(response.body);
      data = convertDataToJSON['CE']['semesters'][0]["subjects"];
      print("Data : $data");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("JSON from Network"),
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                    child: new Container(
                      child: new Text("${data[index]['subjectName']}"),
                      padding: const EdgeInsets.all(18.0),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: data == null ? 0 : data.length,
      ),
    );
  }
}
