import 'package:flutter/material.dart';
import 'package:hey_elfana/locator.dart';
import 'package:hey_elfana/ui/home/home_view.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ELFAAEL',
      theme: ThemeData(),
      home: HomeView(),
    );
  }
}
