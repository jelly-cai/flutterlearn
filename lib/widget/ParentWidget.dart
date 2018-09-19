import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/widget/TapboxB.dart';
import 'package:myfirstflutterapp/widget/TapboxC.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ParentWidgetState();
  }
}

class ParentWidgetState extends State {
  bool _isActive = false;

  void handleActive(bool newValue) {
    setState(() {
      _isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TapboxC(
      active: _isActive,
      onChanged: handleActive,
    );
  }
}
