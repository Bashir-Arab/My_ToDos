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
          backgroundColor: Colors.white,
          title: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text('Cancel', style:TextStyle(
              color: Colors.red,
                fontSize: 15,
                  fontWeight: FontWeight.bold,
              )
                ),
                onPressed: ()=>{},
              ),
              Text('Add New Task',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 24,
                  )
              ),
              TextButton(
                  child: Text('Save', style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  onPressed: ()=>{},
              ),
            ],
          )
          ),
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
                    fontWeight: FontWeight.bold,
                  ),
                )),
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
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: AddDescription(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(
                      left: 11.0,
                      top: 5.0,
                    ),
                    child: Text(
                      'Task Date and Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    height: 35,
                    width: 110,
                    margin: EdgeInsets.only(right: 10.0),
                    child: TextField(
                      onTap: () => {},
                      decoration: InputDecoration(
                        hintText: TimeOfDay(hour: 9, minute: 0).format(context).toString(),
                        fillColor: Colors.black,
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      ),
                    )
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2025, 01, 01),
                  calendarStyle: CalendarStyle(
                      selectedTextStyle: TextStyle(color: Colors.white),
                    selectedDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                  ),
                  shouldFillViewport: true,
                  daysOfWeekHeight: 15.0,
                  onPageChanged: null,
                ),
              ),
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
        hintText: 'Add Title',
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
