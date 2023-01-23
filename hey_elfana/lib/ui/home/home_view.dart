import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/drawer/navbar_drawer.dart';
import 'package:hey_elfana/ui/views/centered_view.dart';
import 'package:hey_elfana/ui/home/home_content_large.dart';
import 'package:hey_elfana/ui/home/home_content_small.dart';
import 'package:hey_elfana/ui/navbar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavBarDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentSmall(),
                  tablet: HomeContentLarge(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
