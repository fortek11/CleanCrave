import 'package:drug_app/graphScreen.dart';
import 'package:drug_app/input.dart';
import 'package:drug_app/pieScreen.dart';
import 'package:drug_app/productScreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'graphClass.dart';

import 'package:flutter/material.dart';

class Tabscreen extends StatefulWidget {
  @override
  State<Tabscreen> createState() => _TabscreenState();
}

final List<GraphClass> pointTable = [
  GraphClass(0, 2),
  GraphClass(1, 4),
  GraphClass(2, 3),
  GraphClass(3, 5),
];

class _TabscreenState extends State<Tabscreen> {
  int selectedTab = 0;
  void selectTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  String phew = 'haha';

  List _pages = [
    PieScreen(),
    ProductScreen(),
    GraphScreen(pointTable),
  ];

  int totall = 0;

  int totalOfall() {
    int totalSum = 0;
    for (int i = 0; i < pointTable.length; i++) {
      totalSum += pointTable[i].points;
    }
    return totalSum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 246, 251, 1.000),
      body: _pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Color.fromRGBO(43, 15, 106, 1),
          selectedItemColor: Color.fromRGBO(100, 54, 226, 1),
          showUnselectedLabels: false,
          currentIndex: selectedTab,
          onTap: (value) {
            return selectTab(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_outlined), label: 'Pie'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dns_sharp), label: 'Graph'),
          ]),
    );
  }
}
