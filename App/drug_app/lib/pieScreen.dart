import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';

class PieScreen extends StatefulWidget {
  @override
  State<PieScreen> createState() => _PieScreenState();
}

class _PieScreenState extends State<PieScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      const SizedBox(
        height: 40,
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today,',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(43, 15, 106, 1),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
              style: TextStyle(fontSize: 19),
            )
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 246, 251, 1.000),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const Text(
              "Monthly Streak Tracker",
              style: TextStyle(
                  color: Color.fromRGBO(23, 13, 52, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: 0.33,
                //progressColor: Colors.deepPurple,
                backgroundColor: Colors.grey.shade200,
                circularStrokeCap: CircularStrokeCap.round,
                linearGradient: LinearGradient(colors: [
                  Color.fromRGBO(23, 13, 52, 1),
                  Color.fromRGBO(43, 15, 106, 1),
                  Color.fromRGBO(100, 54, 226, 1),
                  Color.fromRGBO(220, 47, 172, 1)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                animation: true,
                animationDuration: 1200,
                center: const Text(
                  '10 Day\'s',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(23, 13, 52, 1),
                      fontWeight: FontWeight.bold),
                ),
                footer: Text(
                  "Target: 30 Day's",
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
