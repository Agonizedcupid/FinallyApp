import 'package:final_design/Activity/Fragment/AccountFragment.dart';
import 'package:final_design/Activity/Fragment/BagFragment.dart';
import 'package:final_design/Activity/Fragment/PaidHomeFragment.dart';
import 'package:final_design/Resources/IconsConstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Resources/Drawable/CircularButtonWithImageText.dart';
import '../Resources/Margins.dart';
import 'Fragment/HomeFragment.dart';

class PaidHomeNavBar extends ConsumerStatefulWidget {
  const PaidHomeNavBar({Key? key}) : super(key: key);

  @override
  ConsumerState<PaidHomeNavBar> createState() =>
      _PaidHomeNavBarState();
}
var tstyle = TextStyle(color: Colors.white.withOpacity(0.6),
    fontSize: 50
);
class _PaidHomeNavBarState extends ConsumerState<PaidHomeNavBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

  }

  var padding = const EdgeInsets.symmetric(horizontal: 18,vertical: 5);
  double gap =10;

  int _index = 0;
  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.teal
  ];

  List pages = [const PaidHomeFragment(),const BagFragment(), const AccountFragment()];
  List<Text> text = [
    Text('Home', style:tstyle ),
    Text('Cart',style: tstyle,),
    Text('Account',style: tstyle,),
  ];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          controller: controller,
          onPageChanged: (page){
            setState(() {
              _index= page;
            });
          },
          itemBuilder:(context,position){

            return pages[position];
            // return Container(
            //   color: colors[position],
            //   child:Center(child: text[position]),
            // );
          }),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0,25),
                )
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: Icons.home,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.purple,
                  text: 'Home',
                  textColor: Colors.purple,
                  backgroundColor: Colors.purple.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.shopping_bag,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.pink,
                  text: 'Cart',
                  textColor: Colors.pink,
                  backgroundColor: Colors.pink.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.person,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.grey,
                  text: 'Account',
                  textColor: Colors.grey,
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index){
                setState(() {
                  _index =index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),

    );
  }
}