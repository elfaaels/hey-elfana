import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

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
              _NavBarItem('About'),
              SizedBox(width: 60),
              _NavBarItem('Services'),
              SizedBox(width: 60),
              _NavBarItem('Contact Me'),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 18,
      ),
    );
  }
}
