import 'package:flutter/material.dart';
import 'package:quiz_app/src/config/app_config.dart';
import 'package:quiz_app/src/screens/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: AppConfig.getThemeData(),
      home: Home(),
    );
  }
}
