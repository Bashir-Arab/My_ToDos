import 'package:flutter/material.dart';
import 'home_page.dart';
import 'new_task_page.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFffffff),
        accentColor: Color(0xFF1E4C6D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFF17414F)),
          headline1: TextStyle(color: Color(0xFF17414F)),

        )
      ),
      home: MyHomePage(title: ' '),
    );
  }
}


