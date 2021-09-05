import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "FAM Flutter UI 4",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      defaultTransition: Transition.cupertino,
    );
  }
}
