import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleRowForList {
  Widget createSingleRow(String day, bool isSelected) {
    return Container(
        //height: viewDefaultHeight,
        padding: const EdgeInsets.only(left: 15, right: 15),
        margin: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(75)),
          color: isSelected ? Colors.black : Colors.white,
          //color: Colors.white
        ),
        //padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Center(
          child: Text(day,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              )),
        ));
  }

  Widget createCircularSingleRowWithGreenCircle(String day, bool isSelected) {

    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: isSelected ? Colors.black : Colors.white,
          child: Text(
            day,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        const Positioned(
          right: 0,
          child: CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    );


    // return CircleAvatar(
    //     backgroundColor: isSelected ? Colors.black : Colors.white,
    //     child: Text(
    //       day,
    //       style: TextStyle(
    //         color: isSelected ? Colors.white : Colors.black,
    //         fontSize: 20.0,
    //       ),
    //     ));
  }

}
