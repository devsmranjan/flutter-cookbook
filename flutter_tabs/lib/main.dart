import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Tab Demo',
        theme: new ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: new DefaultTabController(
            length: 3,
            child: new Scaffold(
              appBar: new AppBar(
                leading: new IconButton(
                    icon: new Icon(Icons.menu), onPressed: () {}),
                title: new Text("Tab Demo"),
                bottom: new TabBar(tabs: [
                  new Tab(
                    icon: new Icon(Icons.directions_car),
                  ),
                  new Tab(
                    icon: new Icon(Icons.directions_transit),
                  ),
                  new Tab(icon: new Icon(Icons.directions_bike)),
                ]),
              ),
              body: new TabBarView(children: [
                new Icon(Icons.directions_car),
                new Icon(Icons.directions_transit),
                new Icon(Icons.directions_bike),
              ]),
            )));
  }
}
