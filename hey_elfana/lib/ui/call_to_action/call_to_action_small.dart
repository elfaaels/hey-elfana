import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CTASmall extends StatefulWidget {
  const CTASmall({Key? key}) : super(key: key);

  @override
  State<CTASmall> createState() => _CTASmallState();
}

class _CTASmallState extends State<CTASmall> {
  Future<void>? _launch;

  launchInBrowser() {
    final url = Uri.parse('https://www.linkedin.com/in/elfana-anamta-chatya/');
    _launch = _hireMe(url);
  }

  Future<void> _hireMe(Uri url) async {
    final url = Uri.parse('https://www.linkedin.com/in/elfana-anamta-chatya/');
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchInBrowser,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: Text(
          'Hire Me',
          style: GoogleFonts.firaCode(
            fontSize: 18,
            height: 1.7,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
