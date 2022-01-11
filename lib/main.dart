// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'screen/feed.dart';
import 'screen/home.dart';
import 'screen/profile.dart';
import 'screen/setting.dart';

void main() => runApp(MyApp());

final routes = RouteMap(
  routes: {
    '/': (_) => CupertinoTabPage(
          child: HomePage(),
          paths: ['/feed', '/profile', '/settings'],
        ),
    '/feed': (_) => MaterialPage(child: FeedPage()),
    '/feed/profile/:id': (_) => MaterialPage(child: ProfilePage()),
    '/settings': (_) => MaterialPage(child: SettingsPage()),
    '/profile': (_) => MaterialPage(child: ProfilePage()),
  },
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
