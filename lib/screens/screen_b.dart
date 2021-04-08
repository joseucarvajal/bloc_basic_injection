import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const String Route = '/screen_b';

  const ScreenB({Key key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text('Screen B'),
      ),
    );
  }
}
