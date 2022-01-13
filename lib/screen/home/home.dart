// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:belajar_flutter/widget/big/bannerSlider/bannerSlider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Row(
        children: [
          Column(
            children: [
              Center(
                child: Text('Home Page'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
