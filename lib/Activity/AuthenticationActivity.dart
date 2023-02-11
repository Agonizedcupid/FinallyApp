import 'package:final_design/Resources/Drawable/CircularButtonWithImageText.dart';
import 'package:final_design/Resources/Margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Resources/ConstantTitle.dart';
import '../Resources/IconsConstant.dart';

class AuthenticationActivity extends StatefulWidget {
  const AuthenticationActivity({Key? key}) : super(key: key);

  @override
  State<AuthenticationActivity> createState() => _AuthenticationActivityState();
}

class _AuthenticationActivityState extends State<AuthenticationActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(authenticationTitle),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            margin: const EdgeInsets.only(left: leftMargin, right: rightMargin, top: topMargin, bottom: bottomMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Image.asset(logo),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 25, bottom: 25),
                  child: const Text("Finally. Discipline\nyou can get pay for.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
                ),

                CircularButtonWithImageText().createImageTextBtn(Icons.facebook_outlined, "Log in with facebook", context),
                CircularButtonWithImageText().createImageTextBtn(Icons.apple, "Log in with apple", context),
                CircularButtonWithImageText().createImageTextBtn(Icons.phone, "Log in with phone", context),
                // GestureDetector(
                //   onTap: (){},
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: 60,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: Colors.white,
                //       shape: ShapeBorder()
                //     ),
                //     child: Text("adfadgfsdfg"),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
