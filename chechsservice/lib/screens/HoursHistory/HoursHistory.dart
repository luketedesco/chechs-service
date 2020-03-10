// Import: Flutter
// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Import: chechservice
import 'package:chechsservice/state/AppState.dart';
// Import: Third Party
import 'package:provider/provider.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:chechsservice/screens/HoursHistory/AddHours.dart';

// ======================================
// WIDGET: HoursHistory
// ======================================

class HoursHistory extends StatefulWidget {
  @override
  _HoursHistoryState createState() => _HoursHistoryState();
}

class _HoursHistoryState extends State<HoursHistory> {
  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'AddHours',
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) => AddHours(),
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: ListView(
          children: <Widget>[
            for (var item in state.hoursHistory.keys)
              HoursHistoryCard(
                hoursHistoryIndex: item,
              ),
          ],
        ),
      ),
    );
  }
}

// ======================================
// WIDGET: HistoryCard
// ======================================

class HoursHistoryCard extends StatefulWidget {
  // Define out inputs
  final int hoursHistoryIndex;
  HoursHistoryCard({
    Key key,
    @required this.hoursHistoryIndex,
  }) : super(key: key);

  @override
  _HoursHistoryCardState createState() => _HoursHistoryCardState();
}

class _HoursHistoryCardState extends State<HoursHistoryCard> {
  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    // Extract the history information
    Map hist = state.hoursHistory[widget.hoursHistoryIndex];

    String startTime =
        DateFormat.yMMMMd('en_US').add_jm().format(hist['Start']);
    String endTime = DateFormat.yMMMMd('en_US').add_jm().format(hist['End']);

    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.blueGrey,
      child: ConfigurableExpansionTile(
        header: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              hist['Name'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              startTime,
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 12,
                height: 1.5,
              ),
            ),
            Text(
              endTime,
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ],
        ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  hist['Organization'],
                  style: TextStyle(color: Colors.grey.shade100),
                ),
                Text(
                  hist['Type'],
                  style: TextStyle(color: Colors.grey.shade100),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Counted towards NHS Hours?",
                      style: TextStyle(color: Colors.grey.shade100),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Icon(
                        hist["NHS Hours"] ? Icons.check : Icons.close,
                        color: hist["NHS Hours"]
                            ? Colors.greenAccent
                            : Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
