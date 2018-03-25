import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dropdown Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Dropdown Demo"),
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
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new DropdownButton<String>(
              value: dropdownValue,
              hint: const Text('Choose'),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),


            ),
    );

  }
}
