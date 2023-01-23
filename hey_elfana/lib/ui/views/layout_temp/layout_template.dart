import 'package:flutter/material.dart';
import 'package:hey_elfana/locator.dart';
import 'package:hey_elfana/route/router.dart';
import 'package:hey_elfana/services/navigation_service.dart';
import 'package:hey_elfana/ui/views/centered_view.dart';
import 'package:hey_elfana/ui/drawer/navbar_drawer.dart';
import 'package:hey_elfana/ui/navbar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
