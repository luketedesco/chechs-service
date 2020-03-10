// Import: Flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// Import Third Party
// import 'package:provider/provider.dart';
// Import chechsservice
// import 'package:chechsservice/state/AppState.dart';

class AddHours extends StatefulWidget {
  AddHours({Key key}) : super(key: key);

  @override
  _AddHoursState createState() => _AddHoursState();
}

class _AddHoursState extends State<AddHours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Hours"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "AddHours",
        label: Text("Add"),
        onPressed: () {
          // Leave screen
          Navigator.pop(context);
        },
      ),
      body: Text("here"),
    );
  }
}
