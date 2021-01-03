import 'package:flutter/material.dart';
import 'package:food_app/home_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food ui',
      theme: ThemeData(

      ),
      home: Dashboard(),
    );
  }
}
