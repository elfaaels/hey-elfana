import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/call_to_action/call_to_action.dart';
import 'package:hey_elfana/ui/views/first_content.dart';

class HomeContentLarge extends StatelessWidget {
  const HomeContentLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              FirstContent(),
              Expanded(
                child: Center(
                  child: CallToAction(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
