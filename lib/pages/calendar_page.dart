import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';

enum TimeZone { wib, wita, wit }

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String _currentTime = '';
  String _currentZone = 'WIB';
  String _formatDateTime(DateTime dateTime) {
    return DateFormat('EEEE MM/dd/yyyy hh:mm:ss').format(dateTime);
  }

  @override
  void initState() {
    _currentTime = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime utc = DateTime.now().toUtc();
    final DateTime localTime = utc.add(_getOffset(_currentZone));
    final String formatTime = _formatDateTime(localTime);
    if (this.mounted) {
      setState(() {
        _currentTime = formatTime;
      });
    }
  }

  Duration _getOffset(String zone) {
    if (zone == "WITA") {
      return const Duration(hours: 8);
    }
    if (zone == "WIT") {
      return const Duration(hours: 9);
    }
    return const Duration(hours: 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAEC2B6),
        title: const Text(
          "Calendar",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                '$_currentTime $_currentZone',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _currentZone == 'WIB'
                        ? null
                        : () {
                            setState(() {
                              _currentZone = 'WIB';
                            });
                          },
                    child: Text(
                      'WIB',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffBBD6B8),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _currentZone == 'WITA'
                        ? null
                        : () {
                            setState(() {
                              _currentZone = 'WITA';
                            });
                          },
                    child: Text(
                      'WITA',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffBBD6B8),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _currentZone == 'WIT'
                        ? null
                        : () {
                            setState(() {
                              _currentZone = 'WIT';
                            });
                          },
                    child: Text(
                      'WIT',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffBBD6B8),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: SfCalendar(
                  view: CalendarView.month,
                ),
                decoration: BoxDecoration(
                    color: Color(0xff94AF9F),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
