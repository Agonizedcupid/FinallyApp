import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';

class BirthDateActivity extends ConsumerStatefulWidget {
  const BirthDateActivity({Key? key}) : super(key: key);

  @override
  ConsumerState<BirthDateActivity> createState() =>
      _BirthDateActivityState();
}

class _BirthDateActivityState
    extends ConsumerState<BirthDateActivity> {
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
              value: (0.09 + 0.09 + 0.09 + 0.09),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 25, left: 5, right: rightMargin),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.grey),
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
              )),
          Container(
            margin: const EdgeInsets.only(left: leftMargin, right: rightMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("My birthday is",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: const Text("Birthday (MM/DD/YYYY)",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "MM/DD/YYYY",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 90,
                margin: const EdgeInsets.only(left: leftMargin, right: rightMargin, bottom: bottomMargin),
                child: CircularButtonWithImageText().createTextBtn(Colors.black, Colors.white, "Continue", context, "birth"),
              )
          ))
        ],
      ),
    );
  }
}
