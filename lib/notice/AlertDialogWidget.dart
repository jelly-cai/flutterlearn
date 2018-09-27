import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialogWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("AlertDialogWidget"),
                    content: Text("我是内容"),
                    actions: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("确定"),
                      )
                    ],
                  );
                });
          },
          child: Text("显示dialog"),
        ),
      ),
    );
  }
}
