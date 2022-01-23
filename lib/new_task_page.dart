import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'constants.dart';
import 'package:table_calendar/table_calendar.dart';

class AddNewTask extends StatefulWidget {
  AddNewTask({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddNewTaskState createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                    left: 0.0,
                    top: 12.0,
                    right: 5.0,
                    bottom: 1.5,
                  ),
                  child: Text('Add new Task',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 24,
                      ))),
            ]),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 11.0,
              top: 10.0,
            ),
              child: Text(
                  'Task Title',
              style: TextStyle(
                fontSize: 18,
              ),)
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            child: AddTitle(),
          ),
          Container(
              margin: EdgeInsets.only(
                left: 11.0,
                top: 10.0,
              ),
              child: Text(
                'Task Description',
                style: TextStyle(
                  fontSize: 18,
                ),)
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            child: AddDescription(),
          ),
          Container(
              margin: EdgeInsets.only(
                left: 11.0,
                top: 25.0,
              ),
              child: Text(
                'Task Date',
                style: TextStyle(
                  fontSize: 18,
                ),)
          ),
        ],
      )
    );
  }
}

class AddTitle extends StatefulWidget {
  const AddTitle({
    Key key,
  }) : super(key: key);

  @override
  _AddTitleState createState() => _AddTitleState();
}

class _AddTitleState extends State<AddTitle> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: 'Add the Title',
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

class AddDescription extends StatefulWidget {
  const AddDescription({
    Key key,
  }) : super(key: key);

  @override
  _AddDescriptionState createState() => _AddDescriptionState();
}

class _AddDescriptionState extends State<AddDescription> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: 'Add Description',
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
