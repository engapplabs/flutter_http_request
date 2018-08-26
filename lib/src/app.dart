import 'package:flutter/material.dart';
import 'screens/homePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      body: new HomePage(),
    ));
  }
}
