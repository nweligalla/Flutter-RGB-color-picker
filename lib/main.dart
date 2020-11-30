import 'package:flutter/material.dart';
import './color_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RGB Color Picker",
      home: ColorScreen(),
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.blueGrey,
          size: 12,
        ),
        textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            bodyText2: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            subtitle1: TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
            ),
            caption: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            )),
      ),
    );
  }
}
