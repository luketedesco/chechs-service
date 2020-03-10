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
          Icon(state.nhsHoursCheck ? Icons.check : Icons.close,
              size: 75,
              color:
                  state.nhsHoursCheck ? Colors.greenAccent : Colors.redAccent),
          Flexible(
            flex: 8,
            child: Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Container(
                        width: 175,
                        height: 100,
                        child: Align(
                          child: Text('NUM of hours doing X activity'),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Container(
                        width: 175,
                        height: 100,
                        child: Align(
                          child: Text('NUM of hours doing W activity'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Container(
                        width: 175,
                        height: 100,
                        child: Align(
                          child: Text('NUM of hours spend doing Y activity'),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {},
                      child: Container(
                        width: 175,
                        height: 100,
                        child: Align(
                          child: Text('Num of hours doing Z activity'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
