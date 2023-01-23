import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/navbar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String? menuTitle;
  final IconData? icon;
  const DrawerItem({
    Key? key,
    this.menuTitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title: menuTitle),
        ],
      ),
    );
  }
}
