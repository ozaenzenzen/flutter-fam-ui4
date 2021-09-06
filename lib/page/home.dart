import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/items/home_populardeals_item.dart';
import 'package:flutter_fam_ui4/page/detail_page/home_up_detail_page.dart';
import 'package:flutter_fam_ui4/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => HomeUpDetailPage());
              },
              child: Stack(
                // overflow: Overflow.visible,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: screenUtil.setHeight(150),
                    width: screenUtil.screenWidth,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          color: Colors.purpleAccent.shade100,
                          // color: Colors.black54,
                          blurRadius: 8,
                          spreadRadius: 3,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purpleAccent,
                          Colors.purple,
                          Colors.deepPurple,
                        ],
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: screenUtil.setHeight(15),
                        left: screenUtil.setWidth(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: screenUtil.setHeight(5),
                              horizontal: screenUtil.setWidth(5),
                            ),
                            color: Colors.black54,
                            child: Text(
                              "Best Seller",
                              softWrap: true,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: screenUtil.setSp(10),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenUtil.setHeight(10),
                          ),
                          Container(
                            width: 140,
                            child: Text(
                              "Your beats for your passion and lifestyle",
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: screenUtil.setSp(11),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenUtil.setHeight(10),
                          ),
                          Text(
                            "Rp 300.000",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: screenUtil.setSp(16),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -25,
                    child: Hero(
                      tag: "s",
                      child: Image(
                        height: screenUtil.setHeight(190),
                        image: NetworkImage(FAMImages.flutter_image),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenUtil.setHeight(
                30,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Deals",
                    style: GoogleFonts.poppins(
                      color: Colors.purple[900],
                      fontSize: screenUtil.setSp(15),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Text(
                      "See All",
                      style: GoogleFonts.poppins(
                        color: Colors.purple[900],
                        fontSize: screenUtil.setSp(11),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenUtil.setHeight(15),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenUtil.setWidth(5),
                vertical: screenUtil.setWidth(5),
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
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return HomePopDeals();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
