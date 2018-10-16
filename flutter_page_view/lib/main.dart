import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);

    final pageView = PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[PageOne(), PageTwo(), PageThree()],
    );

    return MaterialApp(
      title: 'PageView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: pageView,
    );
  }
}
