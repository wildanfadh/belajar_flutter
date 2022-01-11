// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:routemaster/routemaster.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            label: 'Feed',
            icon: Icon(CupertinoIcons.list_bullet),
          ),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(CupertinoIcons.profile_circled)),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
      ),
    );
  }
}

mixin SearchBar {}
