import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/page/cart.dart';
import 'package:flutter_fam_ui4/page/home.dart';
import 'package:flutter_fam_ui4/page/profile.dart';
import 'package:flutter_fam_ui4/page/shop.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> page = [
    HomePage(),
    CartPage(),
    ProfilePage(),
    ShopPage(),
  ];

  bool pageColor = true;
  bool isActive = false;

  var initialPage = 0;
  PageController controller = PageController();
  // ScrollController controller = ScrollController();

  int nowPage = 0;
  @override
  Widget build(BuildContext context) {
    print(nowPage);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home Page",
          style: GoogleFonts.poppins(
            color: Colors.purple[700],
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
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
        children: page,
        controller: controller,
        physics: BouncingScrollPhysics(),
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
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.deepPurple[700],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.jumpToPage(0);
                    nowPage = 0;
                  });
                },
                icon: Icon(
                  CupertinoIcons.house_fill,
                  color: (nowPage == 0) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.jumpToPage(1);
                    nowPage = 1;
                  });
                },
                icon: Icon(
                  CupertinoIcons.bag_fill,
                  color: (nowPage == 1) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.jumpToPage(2);
                    nowPage = 2;
                  });
                },
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: (nowPage == 2) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    controller.jumpToPage(3);
                    nowPage = 3;
                  });
                },
                icon: Icon(
                  CupertinoIcons.person_fill,
                  color: (nowPage == 3) ? Colors.purpleAccent[400] : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
