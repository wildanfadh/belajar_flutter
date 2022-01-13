import 'package:belajar_flutter/routes/routes.dart';
import 'package:belajar_flutter/screen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: App(),
      duration: 5000,
      imageSize: 200,
      imageSrc: "assets/images/jdih_hitam.png",
      // text: "Kota Mojokerto",
      // textType: TextType.ColorizeAnimationText,
      // textStyle: TextStyle(
      //     fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.green),
      // colors: [
      //   Colors.green,
      //   Colors.white,
      // ],
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}
