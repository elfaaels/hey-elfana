import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/call_to_action/call_to_action.dart';
import 'package:hey_elfana/ui/views/first_content.dart';

class HomeContentSmall extends StatelessWidget {
  const HomeContentSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FirstContent(),
        SizedBox(height: 40),
        CallToAction(),
      ],
    );
  }
}
