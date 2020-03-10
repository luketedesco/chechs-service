// Import: Flutter
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Import Third Party
import 'package:provider/provider.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';
import 'package:chechsservice/screens/Opportunities/AddOpportunity.dart';

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
        heroTag: "AddOpportunity",
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) => AddOpportunity(),
            ),
          );
        },
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
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    // Extract the opportunity
    Map opt = state.opportunities[widget.opportunityIndex];

    String startTime = DateFormat.yMMMMd('en_US').add_jm().format(opt['start']);
    String endTime = DateFormat.yMMMMd('en_US').add_jm().format(opt['end']);

    return Container(
      color: Colors.blueGrey.shade200,
      margin: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * .025,
        0,
        MediaQuery.of(context).size.width * .025,
        5,
      ),
      alignment: Alignment.centerLeft,

      // padding: EdgeInsets.fromLTRB(10,0,10,0),
      child: ConfigurableExpansionTile(
        onExpansionChanged: (bool value) {
          setState(() {
            isPressed = value;
          });
        },
        headerBackgroundColorStart: Colors.blueGrey,
        headerBackgroundColorEnd: Colors.blueGrey.shade200,
        expandedBackgroundColor: Colors.blueGrey.shade200,
        header: Container(
          width: MediaQuery.of(context).size.width * .95,
          padding: EdgeInsets.fromLTRB(10, 7, 0, 7),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                opt['location'],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: isPressed ? Colors.black : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                startTime,
                style: TextStyle(
                  color: isPressed ? Colors.black : Colors.white,
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
              Text(
                endTime,
                style: TextStyle(
                  color: isPressed ? Colors.black : Colors.white,
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
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
