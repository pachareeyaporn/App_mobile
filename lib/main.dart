import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter_application_1/Page4.dart';
import 'package:flutter_application_1/Page5.dart';
import 'package:flutter_application_1/Page6.dart';
import 'package:flutter_application_1/Page7.dart';
import 'package:flutter_application_1/Page8.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'เมนูอาหาร',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
       initialRoute: '/',
      routes: {
        '/':(context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
        '/page6': (context) => Page6(),
        '/page7': (context) => Page7(),
        '/page8': (context) => Page8(),
      }, 
    );
  }
}