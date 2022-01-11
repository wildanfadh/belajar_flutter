// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () => Routemaster.of(context).push('profile/1'),
        child: Text('Feed page'),
      ),
    ));
  }
}

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  get child => null;

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: child,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
        RaisedButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        )
      ]);
}
