// Import: Flutter
import 'dart:math';

import 'package:flutter/material.dart';

// ======================================
// WIDGET: HoursHistory
// ======================================

class HoursHistory extends StatelessWidget {
  // METHOD: solveQuadratic
  List<num> solveQuadratic(num a, num b, num c) {
    num d = ((b * b) - (4 * a * c));
    num addQuadratic = (-b + sqrt(d)) / (2 * a);
    num subQuadratic = (-b - sqrt(d)) / (2 * a);
    return [addQuadratic, subQuadratic];
  }

  List testLoop(List input) {
    List output = [];
    num a = 1;
    num b = 2;
    for (var x in input) {
      var d = solveQuadratic(a, b, x);
      output.add(d);
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    // Test my function
    // List<num> output = solveQuadratic(1, 3, -10);

    // Test loop function
    // List output = testLoop([-1, 0, 10, 5, 5]);
    // print(output);

    return Scaffold(
      floatingActionButton: FlatButton.icon(
          onPressed: () {},
          label: Text("Add Hours"),
          textTheme: ButtonTextTheme.primary,
          icon: Icon(Icons.add),
          color: Colors.blueAccent),
      body: Column(
        children: <Widget>[
          DataTable(
            columns: [
              DataColumn(
                label: Text("Oppertunities"),
              ),
              DataColumn(
                label: Text("Hours"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text("data"),
                  ),
                  DataCell(Text("X"),),
                  DataCell(Text("Y"),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
