// Import: Flutter
import 'package:flutter/material.dart';
// Import Third Party
// import 'package:provider/provider.dart';
// Import chechsservice
// import 'package:chechsservice/state/AppState.dart';
import 'package:chechsservice/screens/UserSummary/UserSummary.dart';
import 'package:chechsservice/screens/HoursHistory/HoursHistory.dart';
import 'package:chechsservice/screens/Opportunities/Opportunities.dart';
// import 'package:chechsservice/widgets/CommonWidgets.dart';

// ======================================
// WIDGET: AppLayout
// ======================================

class AppLayout extends StatefulWidget {
  AppLayout({Key key}) : super(key: key);
  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _pageIndex = 0;

  // ======================================
  // METHOD: _setPage
  // ======================================

  void _setPage(int currentIndex) {
    setState(() {
      _pageIndex = currentIndex;
    });
  }

  // ======================================
  // METHOD: build
  // ======================================

  @override
  Widget build(BuildContext context) {
    // AppState state = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Luke's Flutter App"),
      ),
      body: IndexedStack(
        index: _pageIndex,
        children: <Widget>[
          UserSummary(),
          HoursHistory(),
          Opportunities(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text('User Summary'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Hours History'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered),
            title: Text('Opportunities'),
          ),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: Colors.blue,
        onTap: _setPage,
      ),
    );
  }
}
