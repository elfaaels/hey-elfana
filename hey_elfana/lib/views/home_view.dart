import 'package:flutter/material.dart';
import 'package:hey_elfana/views/call_to_action.dart';
import 'package:hey_elfana/views/centered_view.dart';
import 'package:hey_elfana/views/first_content.dart';
import 'package:hey_elfana/views/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
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
        ),
      ),
    );
  }
}
