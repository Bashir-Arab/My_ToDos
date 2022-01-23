import 'package:flutter/material.dart';
import 'package:to_do/constants.dart';
import 'home_page.dart';
import 'new_task_page.dart';
import 'edit_task.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
          primaryColor: kPrimaryColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: kAccentColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kPrimaryColor),
          headline1: TextStyle(color: kPrimaryColor),

        )
      ),
      home: EditTask(title: ' '),
    );
  }
}


