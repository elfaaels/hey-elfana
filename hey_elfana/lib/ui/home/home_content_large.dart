import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/call_to_action/call_to_action.dart';
import 'package:hey_elfana/ui/views/first_content.dart';

class HomeContentLarge extends StatelessWidget {
  const HomeContentLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(child: FirstContent()),
          ],
        ),
        SizedBox(height: 40),
        CallToAction(),
      ],
    );
  }
}
