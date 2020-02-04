// Import: Flutter
import 'package:flutter/material.dart';

class CommonBotton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CommonBotton({
    Key key,
    this.text: '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
      onPressed: onPressed,
    );
  }
}
