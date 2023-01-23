import 'package:flutter/material.dart';
import 'package:hey_elfana/ui/call_to_action/call_to_action_large.dart';
import 'package:hey_elfana/ui/call_to_action/call_to_action_small.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CTASmall(),
      tablet: CTALarge(),
    );
  }
}
