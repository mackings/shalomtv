import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shalom_tv/grace.dart';
import 'package:shalom_tv/home.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    );
  }
}
