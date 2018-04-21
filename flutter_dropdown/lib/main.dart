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


/*
 *
  * new DropdownButtonHideUnderline(
          child: new Container(
            decoration: new BoxDecoration(
              border: new Border.all(
                color: const Color(0xFFD9D9D9),
              ),
            ),
            child: new DropdownButton<int>(
              items: <int>[0, 1, 2, 3, 4, 5].map((int value) {
                return new DropdownMenuItem<int>(
                  value: value,
                  child: new Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: new Text('Quantity $value'),
                  ),
                );
              }).toList(),
              value: quantity,
              onChanged: onChanged,
            ),
          ),
        ),
  *
  *
  *
  * */