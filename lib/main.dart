import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Activity/SplashScreenActivity.dart';
import 'Resources/IconsConstant.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent // it will hide the action bar
  ));
  runApp(const ProviderScope(child: FinalApp()));
}

class FinalApp extends StatelessWidget {
  const FinalApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenActivity(),
    );
  }
}
