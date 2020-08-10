import 'package:flutter/material.dart';
import 'package:heartover/constants/heart.dart';
import 'package:heartover/pages/feed/feeds.dart';
import 'package:heartover/pages/home/homePage.dart';
import 'package:heartover/pages/login/login.dart';
import 'package:heartover/pages/signup/signup.dart';

class Routes {
  /// Setting the routes screens
  static Map<String, Widget Function(BuildContext)> routes() => {
        Heart.home: (ctx) => HomePage(),
        Heart.login: (ctx) => Login(),
        Heart.signup: (ctx) => SignUp(),
        Heart.feeds: (ctx) => Feeds(),
      };
}
