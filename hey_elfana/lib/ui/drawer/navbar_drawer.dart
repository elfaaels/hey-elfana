import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/drawer/drawer_header.dart';
import 'package:hey_elfana/ui/drawer/drawer_item.dart';

class NavBarDrawer extends StatelessWidget {
  const NavBarDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: [
          NavBarDrawerHeader(),
          DrawerItem(
            menuTitle: 'Github',
          ),
          DrawerItem(
            menuTitle: 'Linkedin',
          ),
          DrawerItem(
            menuTitle: 'Spotify',
          ),
        ],
      ),
    );
  }
}
