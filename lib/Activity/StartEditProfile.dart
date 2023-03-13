import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Drawable/CreateCircularView.dart';
import '../Resources/Margins.dart';
import '../StateManagement/StartActivity.dart';

class StartEditProfile extends StatefulWidget {
  const StartEditProfile({Key? key}) : super(key: key);

  @override
  State<StartEditProfile> createState() => _StartEditProfileState();
}

class _StartEditProfileState extends State<StartEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Column(
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
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: topMargin),
              alignment: Alignment.center,
              child: Container(
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
              )),
          Container(
            margin: EdgeInsets.only(top: topMargin),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: leftMargin, right: rightMargin),
                  child: Expanded(
                    child: CircularButtonWithImageText().createGreyImageTextBtn(
                        Icons.edit, "Change Avatar", context),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: leftMargin),
                  child: Expanded(
                    child: CircularButtonWithImageText().createGreyImageTextBtn(
                        Icons.verified_outlined, "Verify Profile", context),
                  ),
                )

              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 25, left: leftMargin, right: rightMargin),
            child: const Text("Full Name",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Colors.grey)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: leftMargin, right: rightMargin),
            child: const TextField(
              obscureText: false,
              decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  hintText: "Older Name",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 15, left: leftMargin, right: rightMargin),
            child: const Text("Email Address",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Colors.grey)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: leftMargin, right: rightMargin),
            child: const TextField(
              obscureText: false,
              decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  hintText: "Older Email",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 15, left: leftMargin, right: rightMargin),
            child: const Text("Password",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Colors.grey)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: leftMargin, right: rightMargin),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  hintText: "At least 8 characters",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          const Spacer(),
          Container(
            child: CircularButtonWithImageText().createTextBtn(Colors.black, Colors.white, "Save", context, "dfgsdf"),
          )
        ],
      ),
    );
  }
}
