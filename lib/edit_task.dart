import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'constants.dart';
import 'package:table_calendar/table_calendar.dart';

class EditTask extends StatefulWidget {
  EditTask({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EditTaskState createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
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
                  Text('Edit Task',
                      style: TextStyle(
                        color: Colors.black,
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
              child: EditTitle(),
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
              child: EditDescription(),
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
                      decoration: InputDecoration(
                        hintText: TimeOfDay(hour: 12, minute: 0).format(context).toString(),
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
                //margin: EdgeInsets.only(),
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2040, 01, 01),
                  calendarStyle: CalendarStyle(
                      selectedTextStyle: TextStyle(color: Colors.white),
                      selectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
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

class EditTitle extends StatefulWidget {
  const EditTitle({
    Key key,
  }) : super(key: key);

  @override
  _EditTitleState createState() => _EditTitleState();
}

class _EditTitleState extends State<EditTitle> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: 'Title',
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

class EditDescription extends StatefulWidget {
  const EditDescription({
    Key key,
  }) : super(key: key);

  @override
  _EditDescriptionState createState() => _EditDescriptionState();
}

class _EditDescriptionState extends State<EditDescription> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: 'Description',
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
