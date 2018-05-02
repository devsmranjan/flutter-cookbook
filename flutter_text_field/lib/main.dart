import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Text Field',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Text field'),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        const SizedBox(height: 24.0),
        new Padding(
          padding: new EdgeInsets.all(24.00),
          child: new Theme(data: new ThemeData(
              primaryColor: Colors.green,
              hintColor: Colors.yellow
          ), child: new TextField(
            decoration: new InputDecoration(
                border: new OutlineInputBorder(),
                hintText: 'Tell us about yourself',
                helperText: 'Keep it short, this is just a demo.',
                labelText: 'Life story',
                prefixIcon: const Icon(Icons.person, color: Colors.green,),
                prefixText: ' ',
                suffixText: 'USD',
                suffixStyle: const TextStyle(color: Colors.green)),
//            maxLines: 1,
          )),

        ),


      ],
    );
  }
}
