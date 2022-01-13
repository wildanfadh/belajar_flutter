// ignore_for_file: prefer_const_constructors
// import 'package:belajar_flutter/screen/splash/splashScreen.dart';
import 'package:belajar_flutter/screen/login/login.dart';
import 'package:belajar_flutter/screen/mainScreen.dart';
import 'package:belajar_flutter/screen/home/home.dart';
import 'package:belajar_flutter/screen/list/list.dart';
import 'package:belajar_flutter/screen/setting/setting.dart';
import 'package:belajar_flutter/screen/errors/errorScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'GoRouter Example',
      );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => ListPage(),
      ),
      GoRoute(
        path: '/setting',
        builder: (context, state) => SettingPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(state.error),
  );
}
