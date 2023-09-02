import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CTALarge extends StatefulWidget {
  const CTALarge({Key? key}) : super(key: key);

  @override
  State<CTALarge> createState() => _CTALargeState();
}

class _CTALargeState extends State<CTALarge> {
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchInBrowser,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
