import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';

class SalaryPage extends ConsumerStatefulWidget {
  const SalaryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SalaryPage> createState() =>
      _SalaryPageState();
}

class _SalaryPageState
    extends ConsumerState<SalaryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    double _currentValue = 0.0;
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
              value: (0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09),
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
                const Text("My Average Salary is",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child:       const Text("Here is some information why we need your salary information.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey)),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),



              ],
            ),
          ),
          Container(
            child:Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              divisions: 100,
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              onChanged: (double value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),
          Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 90,
                margin: const EdgeInsets.only(left: leftMargin, right: rightMargin, bottom: bottomMargin),
                child: CircularButtonWithImageText().createTextBtn(Colors.black, Colors.white, "Continue", context, "salary"),
              )
          ))
        ],
      ),
    );


    // return Scaffold(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: <Widget>[
    //       Container(
    //         margin: const EdgeInsets.only(top: 45),
    //         child: const LinearProgressIndicator(
    //           backgroundColor: Colors.grey,
    //           valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
    //           value: (0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09 + 0.09),
    //         ),
    //       ),
    //       Container(
    //           margin: const EdgeInsets.only(
    //               top: 10, bottom: 25, left: 5, right: rightMargin),
    //           alignment: Alignment.center,
    //           child: Column(
    //             children: [
    //               Row(
    //                 children: [
    //                   IconButton(
    //                     icon: const Icon(Icons.arrow_back_ios,
    //                         color: Colors.grey),
    //                     onPressed: () => Navigator.of(context).pop(),
    //                   ),
    //                   Container(
    //                     margin: const EdgeInsets.only(left: 0),
    //                     child: const Text("Back",
    //                         style: TextStyle(color: Colors.grey, fontSize: 18)),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           )),
    //       Container(
    //         margin: const EdgeInsets.only(left: leftMargin, right: rightMargin),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             const Text("Choose my weekly goals",
    //                 style: TextStyle(
    //                     fontSize: 24,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black)),
    //             Container(
    //               margin: const EdgeInsets.only(top: 25),
    //               child: CircularButtonWithImageText().createTextBtn(Colors.white, Colors.black, "Specific days", context, ""),
    //             ),
    //             Container(
    //               child: CircularButtonWithImageText().createTextBtn(Colors.white, Colors.black, "Non-specific days", context, ""),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Expanded(child: Align(
    //           alignment: Alignment.bottomCenter,
    //           child: Container(
    //             height: 90,
    //             margin: const EdgeInsets.only(left: leftMargin, right: rightMargin, bottom: bottomMargin),
    //             child: CircularButtonWithImageText().createTextBtn(Colors.black, Colors.white, "Continue", context, "choose"),
    //           )
    //       ))
    //     ],
    //   ),
    // );
  }
}
