// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Row(
      children: [
        Column(
          children: [
            Center(
              child: Text('List Page'),
            )
          ],
        )
      ],
    ));
  }
}
