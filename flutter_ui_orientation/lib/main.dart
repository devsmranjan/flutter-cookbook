import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const _title = 'Flutter Orientation';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: OrientationList(
        title: _title,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                '${index+1}',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        );
      }),
    );
  }
}
