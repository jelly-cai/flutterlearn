import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBarWidget"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("这是一个消息"),
                action: SnackBarAction(label: "关闭", onPressed: () {}),
              ));
            },
            child: Text("显示SnackBar"),
          );
        }),
      ),
    );
  }
}
