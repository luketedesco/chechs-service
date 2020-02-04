// Import: Flutter
import 'package:flutter/material.dart';
// Import Third Party
import 'package:provider/provider.dart';
// Import chechsservice
import 'package:chechsservice/state/AppState.dart';
import 'package:chechsservice/screens/AppLayout/AppLayout.dart';
import 'package:chechsservice/theme/primary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: primaryTheme,
        home: AppLayout(),
      ),
    );
  }
}
