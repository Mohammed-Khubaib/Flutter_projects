//import "package:percent_indicator/percent_indicator.dart";

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pomodoro(),
  ));
}

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  // ignore: non_constant_identifier_names
  static int TimeInMinut = 25;
  // ignore: non_constant_identifier_names
  int TimeInSec = TimeInMinut * 60;
  Timer? timer;
  // ignore: non_constant_identifier_names
  void _StartTimer() {
    TimeInMinut = 25;
    // ignore: non_constant_identifier_names
    int Time = TimeInSec;
    // ignore: non_constant_identifier_names
    double SecPercent = (Time / 100);
    print(SecPercent);
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (Time > 0) {
          Time--;
          if (Time % 60 == 0) {
            TimeInMinut--;
          }
          if (Time % SecPercent == 0) {
            if (percent < 1) {
              percent += 0.01;
            } else {
              percent = 1;
            }
          }
        } else {
          percent = 0;
          TimeInMinut = 25;
          timer.cancel();
        }
      });
    });
  }

  void _StopTimer() {
    percent = 0;
    timer?.cancel();
  }



  @override // This widget is the root of your application.

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 0.0),
                  child: Text(
                    "Pomodoro",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent[700],
                        fontSize: 40.0),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: percent,
                        animateFromLastPercent: true,
                        radius: 130.0,
                        lineWidth: 30.0,
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade300,
                        center: Text(
                          "$TimeInMinut m",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.deepPurple,
                              fontSize: 60.0),
                        ),
                      ),
                    ],

                  ),
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _StopTimer();
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Stop",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple[700],
                              padding: EdgeInsets.all(5.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _StartTimer();
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple[700],
                              padding: EdgeInsets.all(5.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                            )),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}