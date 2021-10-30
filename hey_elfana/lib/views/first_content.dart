import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstContent extends StatelessWidget {
  const FirstContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Elfana Anamta,\nChatya',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'A Passionate Engineer - Coder - Whatsoever.',
            style: GoogleFonts.poppins(fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}
