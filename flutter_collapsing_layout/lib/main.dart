import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Sliver App Bar',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(),
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
              expandedHeight: 150.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: const Text('Sliver App Bar'),
              ),
              pinned: true,
              floating: false,
              centerTitle: true,
              actions: <Widget>[
                new IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {},
                ),
              ]),
          new SliverList(
              delegate: new SliverChildBuilderDelegate((context, index) {
            return new ListTile(
              title: new Text("List Item $index"),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
