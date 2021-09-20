import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenUtil.setWidth(15),
        vertical: screenUtil.setWidth(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              color: Colors.purple[900],
              fontSize: screenUtil.setSp(30),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: screenUtil.setHeight(10),
          ),
          Container(
            width: screenUtil.screenWidth,
            padding: EdgeInsets.symmetric(
              vertical: screenUtil.setWidth(10),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.purple.shade100,
                  // color: Colors.black54,
                  blurRadius: 7,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: screenUtil.setWidth(20),
                  ),
                  height: screenUtil.setHeight(100),
                  width: screenUtil.setWidth(100),
                  // color: Colors.black,
                  child: Image.network(FAMImages.flutter_image),
                ),
                SizedBox(
                  width: screenUtil.setWidth(10),
                ),
                Column(
                  children: [
                    Text(
                      "Name\t: Flutter Dot Dev",
                      style: GoogleFonts.poppins(
                        color: Colors.purple[900],
                        fontSize: screenUtil.setSp(12),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Citizenship\t: Indonesia",
                      style: GoogleFonts.poppins(
                        color: Colors.purple[900],
                        fontSize: screenUtil.setSp(12),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // return Center(
    //   child: Container(
    //     child: Text(
    //       "Profile",
    //       style: GoogleFonts.poppins(
    //         fontSize: 30,
    //       ),
    //     ),
    //     color: Colors.green,
    //   ),
    // );
  }
}
