import 'package:flutter/cupertino.dart';

class AppRoutes {
  static Future<Object?>? nav(BuildContext context, Widget page) {
    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (context, animation1, animation2, child) => FadeTransition(
        opacity: animation1,
        child: child,
      ),
    ));
  }

  static Future<Object?>? navReplace(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (context, animation1, animation2, child) => FadeTransition(
        opacity: animation1,
        child: child,
      ),
    ));
  }
}