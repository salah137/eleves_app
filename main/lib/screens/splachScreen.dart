import 'package:flutter/material.dart';
import 'package:main/layouts/HomeLayout.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomePage(),
        title: Text('centre icome plus'),
      ),
    );
  }
}