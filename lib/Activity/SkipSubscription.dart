import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';

class SkipSubscription extends ConsumerStatefulWidget {
  const SkipSubscription({Key? key}) : super(key: key);

  @override
  ConsumerState<SkipSubscription> createState() => _SkipSubscriptionPageState();
}

class _SkipSubscriptionPageState extends ConsumerState<SkipSubscription> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

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
            // child: const Text("Skip",
            //     style: TextStyle(
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.grey)),

            child: InkWell(
              onTap: () {
                // handle button click
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close // set the height of the button image
              ),
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
                              style:
                              TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
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
                style:
                TextStyle(color: Colors.grey, fontSize: 16),
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
                        const Center(
                          child: Text(
                            'Terms and Conditions',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
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
                  )
              ))
        ],
      ),
    );

  }
}