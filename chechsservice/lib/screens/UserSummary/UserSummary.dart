// Import: Flutter
import 'package:flutter/material.dart';
// Import Third Party
import 'package:provider/provider.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';

// ======================================
// WIDGET: UserSummary
// ======================================

class UserSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      AppState state = Provider.of<AppState>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'School Hours',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              '0/20 CHANGE TO VARIABLE',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Text(
            'NHS Hours',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Icon(
            state.nhsHoursCheck ? Icons.check : Icons.cancel,
            size: 75,
            color: state.nhsHoursCheck ? Colors.greenAccent : Colors.redAccent
          )
        ],
      ),
    );
  }
}
