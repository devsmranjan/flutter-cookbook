import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Tabs Demo",
        theme: new ThemeData(primarySwatch: Colors.yellow),
        home: new MyHome());
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'LEFT'),
    new Tab(text: 'CENTER'),
    new Tab(text: 'RIGHT'),
  ];

  final List<Icon> _allAppBarIcons = <Icon>[
    new Icon(Icons.list),
    new Icon(Icons.search),
    new Icon(Icons.refresh),
  ];

  TabController _tabController;
  Icon _appBarIcons;

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
    _tabController.addListener(_handleAppBarIcons);
    _appBarIcons = _allAppBarIcons[0];
  }

  void _handleAppBarIcons() {
    setState(() {
      _appBarIcons = _allAppBarIcons[_tabController.index];
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
              icon: _appBarIcons,
              onPressed: () {
                switch(_tabController.index) {
                  case 0: /*Action for Tab 1*/;
                  break;
                  case 1: /*Action for Tab 1*/;
                  break;
                  case 2: /*Action for Tab 1*/;
                  break;

                }
              }),
        ],
        title: new Text("Tabs Demo"),
        bottom: new TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return new Center(child: new Text(tab.text));
        }).toList(),
      ),
    );
  }
}
