import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/navbar/navbar_mobile.dart';
import 'package:hey_elfana/ui/navbar/navbar_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTablet(),
    );
  }
}
