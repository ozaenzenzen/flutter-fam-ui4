import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenUtil screenUtil = ScreenUtil();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Column(
        children: [
          Container(
            height: screenUtil.setHeight(150),
            width: double.infinity,
            child: Center(
              child: Text("Test"),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  color: Colors.black54,
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  Colors.purple,
                  Colors.deepPurple,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
