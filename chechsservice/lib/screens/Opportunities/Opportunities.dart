// Import: Flutter
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Import Third Party
import 'package:provider/provider.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';

// ======================================
// WIDGET: Opportunities
// ======================================

class Opportunities extends StatefulWidget {
  @override
  _OpportunitiesState createState() => _OpportunitiesState();
}

class _OpportunitiesState extends State<Opportunities> {
  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: ListView(
          children: <Widget>[
            for (var item in state.opportunities.keys)
              OpportunityCard(
                opportunityIndex: item,
              ),
          ],
        ),
      ),
    );
  }
}

// ======================================
// WIDGET: OpportunityCard
// ======================================

class OpportunityCard extends StatefulWidget {
  // Define out inputs
  final int opportunityIndex;
  OpportunityCard({
    Key key,
    @required this.opportunityIndex,
  }) : super(key: key);

  @override
  _OpportunityCardState createState() => _OpportunityCardState();
}

class _OpportunityCardState extends State<OpportunityCard> {
  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    // Extract the opportunity
    Map opt = state.opportunities[widget.opportunityIndex];

    String startTime = DateFormat.yMMMMd('en_US').add_jm().format(opt['start']);
    String endTime = DateFormat.yMMMMd('en_US').add_jm().format(opt['end']);

    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.blue,
      child: ExpansionTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              opt['location'],
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
                Text(opt['organization']),
                Text(opt['contactPhone']),
                Text(opt['contactEmail']),
              ],
            ),
          )
        ],
      ),
    );
  }
}
