import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/data/page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DataPage dataPage = DataPage();

  PageController controller = PageController();

  ScreenUtil screenUtil = ScreenUtil();

  int nowPage = 0;
  @override
  Widget build(BuildContext context) {
    // print(nowPage);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "FAM",
            style: GoogleFonts.poppins(
              fontSize: screenUtil.setSp(17),
              color: Colors.purple,
              fontWeight: FontWeight.w800,
            ),
            children: [
              TextSpan(
                text: "-STYLE PHONE",
                style: GoogleFonts.poppins(
                  color: Colors.deepPurple[700],
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(
              horizontal: screenUtil.setHeight(20),
            ),
            onPressed: () {
              //
            },
            icon: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.purple[700],
            ),
          ),
        ],
      ),
      body: PageView(
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        children: dataPage.page,
        controller: controller,
        physics: ScrollPhysics(),
        onPageChanged: (page) {
          // print(page);
          setState(() {
            nowPage = page;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent[400],
        onPressed: () {
          //
        },
        child: Icon(
          CupertinoIcons.add_circled_solid,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4.5,
        color: Colors.deepPurple[700],
        shape: CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.animateToPage(
                      0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                    nowPage = 0;
                  });
                },
                icon: Icon(
                  CupertinoIcons.house_fill,
                  color:
                      (nowPage == 0) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.animateToPage(
                      1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                    nowPage = 1;
                  });
                },
                icon: Icon(
                  CupertinoIcons.bag_fill,
                  color:
                      (nowPage == 1) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.animateToPage(
                      2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                    nowPage = 2;
                  });
                },
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color:
                      (nowPage == 2) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.animateToPage(
                      3,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                    nowPage = 3;
                  });
                },
                icon: Icon(
                  CupertinoIcons.person_fill,
                  color:
                      (nowPage == 3) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
