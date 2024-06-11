import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/constant.dart';
import 'package:moencak_apps/pages/detailGunung.dart';
import 'package:moencak_apps/pages/editProfil.dart';
import 'package:moencak_apps/pages/gunungList.dart';
import 'package:moencak_apps/pages/homepage.dart';
import 'package:moencak_apps/pages/orderPage.dart';
import 'package:moencak_apps/pages/favoritePage.dart';
import 'package:moencak_apps/pages/userPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavBar extends StatefulWidget {

  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
int selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    OrderPage(),
    FavoritePage(),
    UserPage(),
  ];

  void onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home, 
            color: Color(0xFFF5F2E8) 
          ),
          Icon(
            Icons.shopping_cart, 
            color: Color(0xFFF5F2E8) 
          ),
          Icon(
            Icons.favorite, 
            color: Color(0xFFF5F2E8)
          ),
          Icon(
            Icons.person, 
            color: Color(0xFFF5F2E8)
          ),
        ],
        color: primary,
        backgroundColor: secondary,
        onTap: onTap,
      ),
      body: _children[selectedIndex] ,
    );
  }
}