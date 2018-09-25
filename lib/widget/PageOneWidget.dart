import 'package:flutter/material.dart';

class PageOneWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(children: <Widget>[
      new Text("这是第一个界面"),
      GestureDetector(child: new Text("点击跳转到第二个界面去"), onTap: () {
        Navigator.of(context).pushNamed("/two");
      })
    ]);
  }
}