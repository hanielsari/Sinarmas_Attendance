import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class AbsentPage extends StatefulWidget {
  const AbsentPage({Key? key}) : super(key: key);

  @override
  _AbsentPageState createState() => _AbsentPageState();
}

class _AbsentPageState extends State<AbsentPage> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: content()
            )
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          child: TableCalendar(focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),

          ),
        )
      ],
    );
  }
}

