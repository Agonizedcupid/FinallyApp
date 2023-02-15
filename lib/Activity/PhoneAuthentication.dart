import 'package:final_design/Activity/Common/Constant.dart';
import 'package:final_design/Resources/Margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneAuthentication extends ConsumerStatefulWidget {
  const PhoneAuthentication({Key? key}) : super(key: key);

  @override
  ConsumerState<PhoneAuthentication> createState() =>
      _PhoneAuthenticationState();
}

class _PhoneAuthenticationState extends ConsumerState<PhoneAuthentication> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 45),
            child: const LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              value: progress,
            ),
          ),


          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 25,left: 5, right: rightMargin),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      child: const Text("Back",
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                    )
                  ],
                ),
              ],
            )
          ),


          Container(
            margin: const EdgeInsets.only(left: leftMargin, right: rightMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const Text("My Phone number is",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: const Text(
                      "When you 'continue', Finally App will send you a text with verification code. Message and data rates may apply",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
