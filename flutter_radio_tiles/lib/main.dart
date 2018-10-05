import 'package:flutter/material.dart';

void main() => runApp(MyApp());

enum SingingCharacter { lafayette, jefferson }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Tile Demo',
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
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Tile Demo"),
      ),
      body: new Column(
        children: <Widget>[
          new RadioListTile<SingingCharacter>(
            title: const Text('Lafayette'),
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
          ),
          new RadioListTile<SingingCharacter>(
            title: const Text('Thomas Jefferson'),
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
          ),
        ],
      ),
    );
  }
}
