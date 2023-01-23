import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatefulWidget {
  final String? title;
  const NavBarItem({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Future<void>? _launch;

  launchMenu() {
    if (widget.title == "Github") {
      final url = Uri.parse('https://github.com/elfaaels');
      _launch = _launchInBrowser(url);
    } else if (widget.title == "Linkedin") {
      final url =
          Uri.parse('https://www.linkedin.com/in/elfana-anamta-chatya/');
      _launch = _launchInBrowser(url);
    } else if (widget.title == "Spotify") {
      final url = Uri.parse('https://volt.fm/elfaael');
      _launch = _launchInBrowser(url);
    }
  }

  Future<void> _launchInBrowser(Uri url) async {
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
      onTap: launchMenu,
      child: Column(
        children: [
          Text(
            widget.title!,
            style: GoogleFonts.firaCode(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
