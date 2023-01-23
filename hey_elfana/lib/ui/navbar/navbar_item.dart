import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatelessWidget {
  final String? title;
  const NavBarItem(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Text(
        title!,
        style: GoogleFonts.firaCode(
          fontSize: 18,
        ),
      ),
    );
  }
}
