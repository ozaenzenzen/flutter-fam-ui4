import 'package:flutter/material.dart';
import 'package:flutter_fam_ui4/page/cart.dart';
import 'package:flutter_fam_ui4/page/home.dart';
import 'package:flutter_fam_ui4/page/profile.dart';
import 'package:flutter_fam_ui4/page/shop.dart';

class DataPage{
   List<Widget> page = [
    HomePage(),
    CartPage(),
    ProfilePage(),
    ShopPage(),
  ];
}