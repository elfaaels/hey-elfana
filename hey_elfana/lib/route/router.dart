import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hey_elfana/route/route_names.dart';
import 'package:hey_elfana/ui/home/home_view.dart';
import 'package:hey_elfana/ui/views/launch_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getScreenRoute(HomeView());
    case GithubRoute:
      return _getScreenRoute(LaunchView());
    case LinkedInRoute:
      return _getScreenRoute(LaunchView());
    case SpotifyRoute:
      return _getScreenRoute(LaunchView());
    default:
  }
}

PageRoute? _getScreenRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
