import 'package:flutter/material.dart';
import 'search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie Search',
      theme: ThemeData.dark(),
      home: SearchPage(),
    );
  }
}

