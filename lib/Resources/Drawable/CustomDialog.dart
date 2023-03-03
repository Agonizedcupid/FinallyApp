import 'package:final_design/Resources/Margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../IconsConstant.dart';

class HelpDialog extends StatelessWidget {
  final String title;
  final String description;

  const HelpDialog({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                GestureDetector(
                 onTap: () {
                   Navigator.of(context).pop();
                 },
                  child: const Icon(Icons.close),
                )
              ],
            ),

            Container(
              margin: const EdgeInsets.only(top: topMargin, left: leftMargin, right: rightMargin),
              alignment: Alignment.center,
              child: Image.asset(
                roundQuestionMarkIcon,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.center,
              child: const Text(
                  "How the point system works?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),

              ),
            ),
            Container(
              child: const Text(
                  "Point Systems: \n\n   "
                      "1. For each session done, you will earn XP according to your membership.\n"
                      "  2. For each consecutive week of attendance, you will get XP (ex: 10 XP for the first week, 20 XP for the second week, 30 XP for the third week, etc.).\n\n",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
