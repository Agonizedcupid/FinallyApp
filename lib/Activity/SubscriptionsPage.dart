import 'package:final_design/Activity/HomeNavBar.dart';
import 'package:final_design/Activity/SkipSubscription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';
import '../StateManagement/StartActivity.dart';

class SubscriptionsPage extends ConsumerStatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends ConsumerState<SubscriptionsPage> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   SystemChrome.setSystemUIOverlayStyle(
  //       const SystemUiOverlayStyle(statusBarColor: Colors.white));
  // }

  @override
  Widget build(BuildContext context) {
    bool agree = false;
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
              value: (1),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(10),
            //StartActivity().start(context, const NamingActivity());
            child: GestureDetector(
              onTap: () {
                StartActivity().start(context, const HomeNavBar());
              },
              child: const Text ("Skip",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                left: leftMargin, right: rightMargin, top: 75),
            alignment: Alignment.center,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Try All Finally Perks",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(children: const [
                          Icon(Icons.check, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Benefit or using finally dfgdfgsdfg',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                        SizedBox(height: 5),
                        Row(children: const [
                          Icon(Icons.check, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Benefit or using finally dfgdfgsdfg',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                        SizedBox(height: 5),
                        Row(children: const [
                          Icon(Icons.check, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Benefit or using finally dfgdfgsdfg',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                        SizedBox(height: 5),
                        Row(children: const [
                          Icon(Icons.check, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Benefit or using finally dfgdfgsdfg',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                        SizedBox(height: 5),
                        Row(children: const [
                          Icon(Icons.check, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Benefit or using finally dfgdfgsdfg',
                            style: TextStyle(fontSize: 16),
                          ),
                        ]),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 15, top: 20, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
                color: Colors.grey[300]),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              "Penalty amont",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )),
                        Container(
                            alignment: AlignmentDirectional.topStart,
                            margin: EdgeInsets.only(top: 15),
                            child: const Text(
                              "According to your answer here is your penalty amount\nCa 10/m",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    )),
              ],
            ),
          ),
          Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.all(25),
              child: const Text(
                "Some notice will be there",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )),
          Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 170,
                    margin: const EdgeInsets.only(
                        left: leftMargin,
                        right: rightMargin,
                        bottom: bottomMargin),
                    child: Column(
                      children: <Widget>[
                        StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Material(
                                    child: Checkbox(
                                      value: agree,
                                      onChanged: (value) {
                                        setState(() {
                                          agree = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  const Text(
                                    'I agree on terms and conditions',
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        // Container(
                        //   margin: const EdgeInsets.only(left: 15, right: 15),
                        //   child:  Row(
                        //     children: [
                        //       Material(
                        //         child: Checkbox(
                        //           value: agree,
                        //           onChanged: (value) {
                        //             setState(() {
                        //               agree = value ?? false;
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //       const Text(
                        //         'I agree on terms and conditions',
                        //         overflow: TextOverflow.ellipsis,
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          height: 90,
                          margin: const EdgeInsets.only(
                              left: leftMargin,
                              right: rightMargin,
                              bottom: bottomMargin),
                          child: CircularButtonWithImageText().createTextBtn(
                              Colors.black,
                              Colors.white,
                              "Subscribe",
                              context,
                              "subscribe"),
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}

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
