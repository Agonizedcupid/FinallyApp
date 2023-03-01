import 'package:final_design/Activity/AboutGoals.dart';
import 'package:final_design/Activity/BirthDateActivity.dart';
import 'package:final_design/Activity/ChooseSpecificDays.dart';
import 'package:final_design/Activity/ChooseWeeklyGoalActivity.dart';
import 'package:final_design/Activity/GenderActivity.dart';
import 'package:final_design/Activity/NamingActivity.dart';
import 'package:final_design/Activity/PaidHomeNavBar.dart';
import 'package:final_design/Activity/PhoneAuthentication.dart';
import 'package:final_design/Activity/SalaryPage.dart';
import 'package:final_design/Activity/VerificationCodeActivity.dart';
import 'package:final_design/Activity/WorkoutTypeActivity.dart';
import 'package:final_design/AppRoutes/StartActivities.dart';
import 'package:final_design/StateManagement/StartActivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Activity/SubscriptionsPage.dart';

class CircularButtonWithImageText {

  Widget createImageTextBtn(IconData icon, String title, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(35),
      ),
      margin: const EdgeInsets.only(top: 25),
      child:  Material(
        color: Colors.white,
        elevation: 8.0,
        borderRadius: BorderRadius.circular(35),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: (){
            if (title == "Log in with phone") {
              StartActivity().start(context,const PhoneAuthentication());
            }
          },
          child: Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Icon(
                   icon,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child:  Text( title, style: const TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createTextBtn(Color backgroundColor, Color textColor, String title, BuildContext context, String flag) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(35),
      ),
      margin: const EdgeInsets.only(top: 25),
      child:  Material(
        color: backgroundColor,
        elevation: 8.0,
        borderRadius: BorderRadius.circular(35),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: (){
            if (flag == "phoneAuth") {
              StartActivity().start(context,const VerificationCodeActivity());
            }
            if (flag == "verificationCode") {
              StartActivity().start(context, const NamingActivity());
            }
            if (flag == "name") {
              StartActivity().start(context, const BirthDateActivity());
            }
            if (flag == "birth") {
              StartActivity().start(context, const GenderActivity());
            }
            if (flag == "gender") {
              StartActivity().start(context, const AboutGoalActivity());
            }
            if (flag == "myGoal") {
              StartActivity().start(context, const WorkoutTypeActivity());
            }
            if (flag == "workoutType") {
              StartActivity().start(context, const ChooseWeeklyGoalActivity());
            }
            if (flag == "choose") {
              StartActivity().start(context, const ChooseSpecificDays());
            }
            if (flag == "minMax") {
              StartActivity().start(context, const SalaryPage());
            }
            if (flag == "salary") {
              StartActivity().start(context, const SubscriptionsPage());
            }
            if (flag == "subscribe") {
              StartActivity().start(context, const PaidHomeNavBar());
            }
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
                  child:  Text( title, style:  TextStyle(fontSize: 18, color: textColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}