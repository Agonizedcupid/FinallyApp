import 'package:flutter/cupertino.dart';
import 'package:routemaster/routemaster.dart';

const splashScreenActivity = "/Activity/SplashScreenActivity";

abstract class StartActivity {
  static String get splashScreen => splashScreenActivity;
}

startActivity(BuildContext context, String path) {
  Routemaster.of(context).push(path);
}
