import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/mainpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: "FAM Flutter UI 4",
        debugShowCheckedModeBanner: false,
        home: MainPage(),
        defaultTransition: Transition.cupertino,
      ),
    );
  }
}
