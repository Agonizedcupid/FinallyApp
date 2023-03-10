import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Drawable/CreateCircularView.dart';
import '../Resources/Margins.dart';
import '../StateManagement/StartActivity.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 45),
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const Expanded(
                    flex: 1,
                    child: Center(
                      child: Text("Edit Profile",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 2 * topMargin, left: leftMargin, right: rightMargin),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Membership", style: TextStyle(color: Colors.grey, fontSize: 14),),
                          SizedBox(height: 5,),
                          Text("Specific Workout", style: TextStyle(color: Colors.black, fontSize: 18),),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: CircularButtonWithImageText().createCircularTextBtn(Colors.grey, Colors.black, "Change", context, ""),
                      )

                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: topMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Gym Size", style: TextStyle(color: Colors.grey, fontSize: 14),),
                            SizedBox(height: 5,),
                            Text("Small", style: TextStyle(color: Colors.black, fontSize: 18),),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 100,
                          child: CircularButtonWithImageText().createCircularTextBtn(Colors.grey, Colors.black, "Change", context, ""),
                        )

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
