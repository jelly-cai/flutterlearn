import 'package:flutter/material.dart';

class MyExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("MyExpandedWidget"),),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text("lutter is Google’s mobile UI framework ||"),
              flex: 2,
            ),
            Expanded(
              child: Text("Hello flyou||"),
              flex: 1,
            ),
            Expanded(
              child: Text("Hello Flutter"),
              flex: 1,
            )
          ],
        ),
        height: 300.0,
      ),
    );
  }
}
