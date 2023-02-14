import 'package:final_design/Activity/Common/Constant.dart';
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
      // appBar: AppBar(
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(-50),
      //     child: AppBar(
      //       title: const Text("Dummy Title"),
      //     ),
      //   ),
      // ),
      body: Container(
        margin: const EdgeInsets.only(top: 45),
        child: Column(
          children: <Widget>[
            const LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              value: progress,
            ),

            Container(
              height: 40,
              alignment: Alignment.center,
              child:Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const Text("Back",
                      style: TextStyle(color: Colors.grey, fontSize: 16))
                ],
              )
            ),

            const Text("My Phone number is",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const Text(
                "When you 'continue', Finally App will send you a text with verification code. Message and data rates may apply",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
