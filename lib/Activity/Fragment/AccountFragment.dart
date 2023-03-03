import 'package:final_design/Resources/Drawable/CreateCircularView.dart';
import 'package:final_design/Resources/Margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Resources/IconsConstant.dart';

class AccountFragment extends StatefulWidget {
  const AccountFragment({Key? key}) : super(key: key);

  @override
  State<AccountFragment> createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 45),
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(flex: 1, child: Image.asset(textLogo)),
              Image.asset(hamburgerIcon),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: topMargin),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(blueTickIcon),
                ),
              ],
            )),
        Container(
          margin: const EdgeInsets.only(top: topMargin),
          child: const Text(
            "User Name",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            CircularView().createCircularView(calenderWhite),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, left: leftMargin, right: rightMargin),
              child: CircularView().createCircularView(flashIcon),
            ),
            CircularView().createCircularView(flashWave),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(topMargin),
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(),
          ),
        )
      ],
    );
  }
}
