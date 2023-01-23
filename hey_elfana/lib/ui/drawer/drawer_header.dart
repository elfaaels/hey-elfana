import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarDrawerHeader extends StatelessWidget {
  const NavBarDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Get To Know',
            style: GoogleFonts.firaCode(
              fontSize: 18,
              height: 1.7,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Tap Here',
            style: GoogleFonts.firaCode(
              height: 1.7,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
