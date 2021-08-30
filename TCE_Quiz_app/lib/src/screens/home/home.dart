import 'package:flutter/material.dart';
import 'package:quiz_app/src/screens/question/question_screen.dart';
import 'package:quiz_app/src/screens/ready/get_ready_screen.dart';
import 'package:quiz_app/src/util/app_routes.dart';
import 'package:quiz_app/src/widgets/text/text_heading.dart';
import 'package:quiz_app/src/widgets/text/text_normal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool hideContent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildHeading(),
              SizedBox(height: 16),
              buildStartButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeading() {
    if (hideContent) return Container();
    return TextHeading('This is a Quiz App');
  }

  Widget buildStartButton() {
    if (hideContent) return Container();

    return ElevatedButton(
      onPressed: () async {
        setState(() {
          hideContent = true;
        });

        await AppRoutes.nav(context, GetReadyScreen());
        setState(() {
          hideContent = false;
        });
      },
      child: TextNormal("Let's Start"),
    );
  }
}
