import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int radioValue = 0;

  void handleRadioValueChanges(int value) {
    setState(() {
      radioValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Demo"),
      ),
      body: Row(
        children: <Widget>[
          Radio<int>(
            value: 0,
            groupValue: radioValue,
            onChanged: handleRadioValueChanges,
          ),
          Radio<int>(
            value: 1,
            groupValue: radioValue,
            onChanged: handleRadioValueChanges,
          ),
        ],
      ),
    );
  }
}
