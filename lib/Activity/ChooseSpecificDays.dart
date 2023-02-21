import 'package:final_design/Model/WeekDays.dart';
import 'package:final_design/Resources/Drawable/CreateSingleRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';

List<String> days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

class ChooseSpecificDays extends ConsumerStatefulWidget {
  const ChooseSpecificDays({Key? key}) : super(key: key);

  @override
  ConsumerState<ChooseSpecificDays> createState() => _ChooseSpecificDaysState();
}

class _ChooseSpecificDaysState extends ConsumerState<ChooseSpecificDays> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  final List<bool> _selected = List.generate(days.length, (index) => false);

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
              value: (0.09 +
                  0.09 +
                  0.09 +
                  0.09 +
                  0.09 +
                  0.09 +
                  0.09 +
                  0.09 +
                  0.09),
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
                const Text("Choose 3 to 5 specific days",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: const Text(
                      "Specific days: Selects number of days and the specific days you want to attend the gym per week.",
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: const Text("Min 3 - Max 5",
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected[index] = !_selected[index];
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    //color: _selected[index] ?  : null,
                    //child: Text(days[index]),
                    child: SingleRowForList()
                        .createSingleRow(days[index], _selected[index]),
                  ),
                );
              },
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, left: 15),
            child: const Text(
                "Workout days",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller:
                        TextEditingController(text: _counter.toString()),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.white
                    ),
                    color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: _decrementCounter,
                        icon: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 90,
                    margin: const EdgeInsets.only(
                        left: leftMargin,
                        right: rightMargin,
                        bottom: bottomMargin),
                    child: CircularButtonWithImageText().createTextBtn(
                        Colors.black,
                        Colors.white,
                        "Continue",
                        context,
                        "minMax"),
                  )))
        ],
      ),
    );

    // return Scaffold(
    //   body: ListView.builder(
    //     itemCount: days.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             _selected[index] = !_selected[index];
    //           });
    //         },
    //         child: Container(
    //           padding: EdgeInsets.all(10),
    //           color: _selected[index] ? Colors.blue : null,
    //           child: Text(days[index]),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
