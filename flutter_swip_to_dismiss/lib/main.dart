import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Swip to Dismiss',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Swip to Dismiss"),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = new List<String>.generate(20, (i) => "Item no ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, index) {
      final item = items[index];

      return new Dismissible(
//        direction: DismissDirection.endToStart,
//        direction: DismissDirection.startToEnd,

        key: new Key(item),
        child: new ListTile(
          title: new Text("$item"),
        ),
        onDismissed: (direction) {
          items.removeAt(index);
          Scaffold.of(context).showSnackBar(
              new SnackBar(content: new Text("$item is dismissed")));
          print(direction);
        },
        background: new Container(
          color: Theme.of(context).primaryColor,
          child: const ListTile(
              leading:
                  const Icon(Icons.delete, color: Colors.white, size: 36.0)),
        ),
        secondaryBackground: new Container(
            color: Theme.of(context).primaryColor,
            child: const ListTile(
                trailing: const Icon(Icons.archive,
                    color: Colors.white, size: 36.0))),
      );
    });
  }
}
