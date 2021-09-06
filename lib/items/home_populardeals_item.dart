import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopDeals extends StatelessWidget {
  final ScreenUtil screenUtil = ScreenUtil();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenUtil.screenWidth,
      margin: EdgeInsets.symmetric(
        vertical: screenUtil.setHeight(15),
        horizontal: screenUtil.setHeight(15),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.network(
                  "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: screenUtil.setWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenUtil.setWidth(80),
                      child: Text(
                        "Desert Sand",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.purple[900],
                          fontSize: screenUtil.setSp(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenUtil.setHeight(3),
                    ),
                    Text(
                      "Yellow",
                      style: GoogleFonts.poppins(
                        color: Colors.deepPurple[900],
                        fontSize: screenUtil.setSp(11),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purpleAccent[400],
              shape: RoundedRectangleBorder(),
            ),
            onPressed: () {
              //
            },
            child: Text("Rp 200.000"),
          ),
        ],
      ),
    );
  }
}
