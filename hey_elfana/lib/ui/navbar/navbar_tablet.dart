import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/navbar/navbar_item.dart';

class NavBarTablet extends StatefulWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  State<NavBarTablet> createState() => _NavBarTabletState();
}

class _NavBarTabletState extends State<NavBarTablet> {
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
              Column(
                children: [
                  NavBarItem(title: "Github"),
                  SizedBox(height: 3),
                  Container(
                    width: 70,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Column(
                children: [
                  NavBarItem(title: 'Linkedin'),
                  SizedBox(height: 3),
                  Container(
                    width: 95,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Column(
                children: [
                  NavBarItem(title: 'Spotify'),
                  SizedBox(height: 3),
                  Container(
                    width: 80,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
