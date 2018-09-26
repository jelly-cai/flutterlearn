import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: Container(
        color: Colors.green,
        width: 300.0,
        height: 300.0,
        child: Container(
          child: Icon(
            Icons.android,
            color: Colors.red,
            size: 40.0,
          ),
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10.0),
        ),
        alignment: Alignment.bottomRight,
      ),
      alignment: Alignment.center,
    ));
  }
}
