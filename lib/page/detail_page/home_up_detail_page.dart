import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/utils/images.dart';
import 'package:flutter_fam_ui4/utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUpDetailPage extends StatefulWidget {
  @override
  _HomeUpDetailPageState createState() => _HomeUpDetailPageState();
}

class _HomeUpDetailPageState extends State<HomeUpDetailPage> {
  ScreenUtil screenUtil = ScreenUtil();
  FAMStrings famStrings = FAMStrings();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: screenUtil.setHeight(300),
                        width: screenUtil.screenWidth,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            // stops: [0.1, 0.5, 1],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.purpleAccent,
                              Colors.purple,
                              Colors.deepPurple,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenUtil.setHeight(100),
                        left: screenUtil.setWidth(20),
                        child: Container(
                          width: screenUtil.screenWidth * 0.45,
                          child: Text(
                            "Showup your feeling and take all chances",
                            maxLines: 4,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: screenUtil.setSp(20),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: -30,
                        child: Hero(
                          tag: "s",
                          child: Image(
                            height: screenUtil.setHeight(220),
                            image: NetworkImage(FAMImages.flutter_image),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenUtil.setHeight(30),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: screenUtil.setWidth(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Express your feeling without fear.",
                              style: GoogleFonts.poppins(
                                color: Colors.deepPurple,
                                fontSize: screenUtil.setSp(20),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenUtil.setHeight(2),
                              ),
                              Text(
                                "(100 Reviews)",
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenUtil.setHeight(5),
                      ),
                      Text(
                        FAMStrings.LOREM_IPSUM,
                        softWrap: true,
                        // maxLines: 6,
                        // overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: screenUtil.setSp(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: screenUtil.setHeight(8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Buyers",
                            style: GoogleFonts.poppins(
                              color: Colors.deepPurple[700],
                              fontSize: screenUtil.setSp(16),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.poppins(
                                color: Colors.deepPurple[700],
                                fontSize: screenUtil.setSp(12),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenUtil.setHeight(3),
                      ),
                      Container(
                        // Expanded(
                        height: screenUtil.setHeight(50),
                        child: ListView.builder(
                          itemExtent: 90,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return CircleAvatar(
                              radius: 70,
                              child: Image.network(FAMImages.flutter_image),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: screenUtil.setHeight(10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenUtil.setHeight(42),
            child: Container(
              height: screenUtil.setHeight(50),
              width: screenUtil.screenWidth,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenUtil.setWidth(15),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenUtil.setWidth(20),
                    ),
                    onPressed: () {
                      //
                    },
                    icon: Icon(
                      CupertinoIcons.bell_fill,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // PreferredSize(
          //   preferredSize: Size(
          //     screenUtil.screenWidth,
          //     screenUtil.setHeight(50),
          //   ),
          //   child: AppBar(
          //     backgroundColor: Colors.transparent,
          //     elevation: 0,
          //     leading: IconButton(
          //       onPressed: () {
          //         Get.back();
          //       },
          //       icon: Icon(CupertinoIcons.back),
          //     ),
          //     actions: [
          //       IconButton(
          //         padding: EdgeInsets.symmetric(
          //           horizontal: screenUtil.setWidth(20),
          //         ),
          //         onPressed: () {
          //           // Get.back();
          //         },
          //         icon: Icon(CupertinoIcons.bell_fill),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          //
        },
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: screenUtil.setHeight(5),
            horizontal: screenUtil.setWidth(20),
          ),
          width: screenUtil.screenWidth,
          height: screenUtil.setHeight(50),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.deepPurple[700],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "Buy",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: screenUtil.setSp(16),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
