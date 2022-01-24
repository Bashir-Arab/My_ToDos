import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'constants.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle_Home(),
        bottom: PreferredSize(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 15.0, top: 5.0),
              width: double.infinity,
              height: 25.0,
              child: Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(25.0),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 3.0, top: 10.0),
            child: DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: kPrimaryColor,
              selectedTextColor: Colors.white,
              dateTextStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600
              ),
              dayTextStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600
              ),
              monthTextStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          TaskCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add_task',
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key key,
  }) : super(key: key);

  //String task_title = 'Task Title';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(
                      left: 15.0,
                      top: 7.0,
                      bottom: 1.0,
                    ),
                    child: Text(
                      'Task Title',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 7.0,
                    right: 10.0,
                    bottom: 1.0,
                  ),
                  child: Text(
                    '10:30 AM',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 14),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  top: 6.0,
                  bottom: 1.0,
                ),
                child: Text(
                  'Task Description',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 16),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(bottom: 1.5, left: 2.0),
                    onPressed: () => {},
                    icon: Icon(Icons.check_box_outline_blank),
                    iconSize: 20,
                  ),
                  Text(
                    'Mark as Completed',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: kAccentColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarTitle_Home extends StatelessWidget {
  const AppBarTitle_Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('Today',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
          )
      ),
    );
  }
}
