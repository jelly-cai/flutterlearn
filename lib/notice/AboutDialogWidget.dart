import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
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
                  return AboutDialog(
                    applicationName: "菜菜客户端",
                    applicationVersion: "1.0.0",
                    applicationIcon: Icon(Icons.android),
                    children: <Widget>[Text("优化了用户体验")],
                  );
                });
          },
          child: new Text("显示dialog"),
        ),
      ),
    );
  }
}
