import 'package:flutter/material.dart';
import 'package:task/locator.dart';
import 'package:task/views/layout_templlate/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
        home: LayoutTemplate());
  }
}
