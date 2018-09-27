import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogWidget"),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(title: Text("我是一个标题"), children: <Widget>[
                  new SimpleDialogOption(onPressed: () {}, child: Text("内容区域"))
                ]);
              });
        },
        child: new Text("显示dialog"),
      )),
    );
  }
}
