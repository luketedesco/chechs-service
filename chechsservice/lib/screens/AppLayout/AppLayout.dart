// Import: Flutter
import 'package:flutter/material.dart';
// Import Third Party
import 'package:provider/provider.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';
import 'package:chechsservice/widgets/CommonWidgets.dart';

// ======================================
// WIDGET: AppLayout
// ======================================

class AppLayout extends StatefulWidget {
  AppLayout({Key key}) : super(key: key);
  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _counter = 0;

  // ======================================
  // METHOD: _incrementCounter
  // ======================================

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // ======================================
  // METHOD: _resetCounter
  // ======================================

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  // ======================================
  // METHOD: build
  // ======================================

  @override
  Widget build(BuildContext context) {
    AppState state = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Luke's Flutter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: CommonBotton(
                text: 'Reset',
                onPressed: _resetCounter,
              ),
            ),
            Text(
              'Gloval Counter Value:',
            ),
            Text(
              '${state.globalCounter}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
