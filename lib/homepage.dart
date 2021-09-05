import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        child: Column(
          children: [
            Text("Test"),
            Text("Test"),
            Text("Test"),
          ],
        ),
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
                  //
                },
                icon: Icon(
                  CupertinoIcons.house_fill,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  CupertinoIcons.bag_fill,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
