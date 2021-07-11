import 'package:flutter/material.dart';
import 'package:main/layouts/HomeLayout.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: HomePage(),
        image: Image(
          image: AssetImage("assets/images/209290103_1798394810347180_7350979293146039910_n.jpg"),
          fit: BoxFit.cover,
        ),
        photoSize: 100,
      ),
    );
  }
}