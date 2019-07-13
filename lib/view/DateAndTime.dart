import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateAndTime extends StatefulWidget {
  @override
  _DataTimeState createState() => _DataTimeState();
}

class _DataTimeState extends State<DateAndTime> {
  @override
  void initState() {
    super.initState();
    // _dataTime = DataTime.now();
    // _date = _dateTime;
    // _time = _dateTime;
  }

  DateTime _dateTime = DateTime.now();
  // String _date;
  var _time = TimeOfDay(hour: 12, minute: 20);

  _showData() async {
    var result = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(1999),
      lastDate: DateTime(2020),
      locale: Locale('zh'),
    );
    setState(() {
      this._dateTime = result;
    });
  }

  _showTime() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      this._time = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text(
                      "${formatDate(_dateTime, [yyyy, '-', mm, '-', dd])}"),
                  onTap: _showData,
                ),
                Icon(Icons.arrow_drop_down),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text("${_time.format(context)}"),
                  onTap: _showTime,
                ),
                Icon(Icons.arrow_drop_down),
              ],
            )
          ],
        ),
      ),
    );
  }
}
