import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Resources/IconsConstant.dart';
import 'AuthenticationActivity.dart';

class SplashScreenActivity extends StatefulWidget {
  const SplashScreenActivity({Key? key}) : super(key: key);

  @override
  State<SplashScreenActivity> createState() => _SplashScreenActivityState();
}

class _SplashScreenActivityState extends State<SplashScreenActivity> {

  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const AuthenticationActivity()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                splashScreenBackgroundImage,
                fit: BoxFit.cover,
              )
          ),
          Center(
              child: Image.asset(
                logo,
              )
          )
        ],
      ),

    );
  }
}
