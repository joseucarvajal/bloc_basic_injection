import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  static const String Route = '/';

  const ScreenA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text('Screen A'),
      ),
    );
  }
}
