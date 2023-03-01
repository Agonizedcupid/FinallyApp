import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:final_design/Activity/SkipSubscription.dart';
import 'package:final_design/Resources/IconsConstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Resources/Drawable/CreateSingleRow.dart';
import '../../StateManagement/StartActivity.dart';

class PaidHomeFragment extends StatefulWidget {
  const PaidHomeFragment({Key? key}) : super(key: key);

  @override
  State<PaidHomeFragment> createState() => _PaidHomeFragmentState();
}
List<String> days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
class _PaidHomeFragmentState extends State<PaidHomeFragment> {
  @override
  Widget build(BuildContext context) {
    const int duration = 30;
    final CountDownController controller = CountDownController();

    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 45),
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                roundQuestionMarkIcon,
              ),
              Image.asset(textLogo),
              Image.asset(
                calenderIcon,
              ),
            ],
          ),
        ),

        Container(
          margin: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height * 0.1,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10),
          //   border: Border.all(
          //     color: Colors.grey,
          //     width: 2,
          //   ),
          // ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // setState(() {
                  //   _selected[index] = !_selected[index];
                  // });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  //color: _selected[index] ?  : null,
                  //child: Text(days[index]),
                  child: SingleRowForList()
                      .createCircularSingleRowWithGreenCircle(days[index], true),
                ),
              );
            },
          ),
        ),
        
        const Text("0/4", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
        const Text("Achieved", style: TextStyle(color: Colors.grey, fontSize: 14),),

        Center(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: CircularCountDownTimer(
              // Countdown duration in Seconds.
              duration: duration,

              // Countdown initial elapsed Duration in Seconds.
              initialDuration: 0,

              // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
              controller: controller,

              // Width of the Countdown Widget.
              width: MediaQuery.of(context).size.width / 2,

              // Height of the Countdown Widget.
              height: MediaQuery.of(context).size.height / 2,

              // Ring Color for Countdown Widget.
              ringColor: Colors.grey,

              // Ring Gradient for Countdown Widget.
              ringGradient: null,

              // Filling Color for Countdown Widget.
              fillColor: Colors.black,

              // Filling Gradient for Countdown Widget.
              fillGradient: null,

              // Background Color for Countdown Widget.
              backgroundColor: Colors.white,

              // Background Gradient for Countdown Widget.
              backgroundGradient: null,

              // Border Thickness of the Countdown Ring.
              strokeWidth: 20.0,

              // Begin and end contours with a flat edge and no extension.
              strokeCap: StrokeCap.round,

              // Text Style for Countdown Text.
              textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),

              // Format for the Countdown Text.
              textFormat: CountdownTextFormat.S,

              // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
              isReverse: false,

              // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
              isReverseAnimation: false,

              // Handles visibility of the Countdown Text.
              isTimerTextShown: true,

              // Handles the timer start.
              autoStart: false,

              // This Callback will execute when the Countdown Starts.
              onStart: () {
                // Here, do whatever you want
                debugPrint('Countdown Started');
              },

              // This Callback will execute when the Countdown Ends.
              onComplete: () {
                // Here, do whatever you want
                debugPrint('Countdown Ended');
              },

              // This Callback will execute when the Countdown Changes.
              onChange: (String timeStamp) {
                // Here, do whatever you want
                debugPrint('Countdown Changed $timeStamp');
              },

              /*
            * Function to format the text.
            * Allows you to format the current duration to any String.
            * It also provides the default function in case you want to format specific moments
              as in reverse when reaching '0' show 'GO', and for the rest of the instances follow
              the default behavior.
          */
              timeFormatterFunction: (defaultFormatterFunction, duration) {
                if (duration.inSeconds == 0) {
                  // only format for '0'
                  return "00 : 00";
                } else {
                  // other durations by it's default format
                  return Function.apply(defaultFormatterFunction, [duration]);
                }
              },
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  margin: const EdgeInsets.only(left: 15, top: 25, right: 15),
                  child: Material(
                    color: Colors.black,
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(35),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () {
                        controller.start();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text("Start a session",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
