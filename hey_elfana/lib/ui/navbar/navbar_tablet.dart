import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/navbar/navbar_item.dart';

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Navbar Item
              NavBarItem('Github'),
              SizedBox(width: 60),
              NavBarItem('Linkedin'),
              SizedBox(width: 60),
              NavBarItem('Spotify'),
            ],
          ),
        ],
      ),
    );
  }
}
