import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Cart",
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
        color: Colors.pink,
      ),
    );
  }
}
