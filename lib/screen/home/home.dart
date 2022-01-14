// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:belajar_flutter/widget/big/bannerSlider/CarouselSlider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // Container(
            //   child: ComplicatedImageDemo(),
            // ),
            GridView.count(
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      children: <Widget>[
        Container(
          child: ComplicatedImageDemo(),
          // color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Okeh Mbeldos'),
          color: Colors.teal[100],
        ),
      ],
    ));
  }
}
