import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Drawer Demo"),
        ),

//        drawer: new Drawer(
//          child: new ListView(
//            padding: EdgeInsets.zero,
//
//            children: <Widget>[
//              new DrawerHeader(child: new Text('Drawer Header'),
//                decoration: new BoxDecoration(
//                  color: Colors.yellow,
//                ),
//              ),
//              new ListTile(
//                leading: new Icon(Icons.home),
//                title: new Text("Home"),
//                onTap: () {
//                  Navigator.pop(context);
//                },
//              ),
//              new ListTile(
//                leading: new Icon(Icons.person),
//                title: new Text("Profile"),
//                onTap: () {
//                  Navigator.pop(context);
//                },
//              ),
//              new ListTile(
//                leading: new Icon(Icons.send),
//                title: new Text("Feedback"),
//                onTap: () {
//                  Navigator.pop(context);
//                },
//              ),
//              new ListTile(
//                leading: new Icon(Icons.exit_to_app),
//                title: new Text("Sign out"),
//                onTap: () {
//                  Navigator.pop(context);
//                },
//              ),
//
//            ],
//          ),
//        ),

        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              new DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: new BoxDecoration(color: Colors.yellow),
              ),
//            new UserAccountsDrawerHeader(accountName: new Text("ddd"), accountEmail: new Text("dddd")),
              new Expanded(
                  child: new ListView(
                padding: const EdgeInsets.only(top: 8.0),
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.home),
                    title: new Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.person),
                    title: new Text("Profile"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.send),
                    title: new Text("Feedback"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.exit_to_app),
                    title: new Text("Sign out"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
