import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: <Widget>[
          buildListTitle(Icons.cake, "蛋糕"),
          buildListTitle(Icons.android, "安卓"),
          buildListTitle(Icons.apps, "应用桌面"),
          buildListTitle(Icons.account_circle, "账户头像"),
        ],
      ),
    );
  }
}

buildListTitle(icon, title) {
  return ListTile(leading: Icon(icon), title: Text(title));
}
