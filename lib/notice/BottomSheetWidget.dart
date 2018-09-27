import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheetWidget"),
      ),
      body: Center(child: Builder(builder: (context) {
        return Column(
          children: <Widget>[
            ShowBottomSheetWidget(),
            ShowModalBottomSheet(),
          ],
        );
      })),
    );
  }
}

buildColumnChildren() {
  return Column(
    children: <Widget>[
      buildListTile(Icons.chat, "开始会话"),
      buildListTile(Icons.help, "操作说明"),
      buildListTile(Icons.settings, "系统设置"),
      buildListTile(Icons.more, "更多设置"),
    ],
  );
}

buildListTile(icon, title) {
  return new ListTile(
    leading: new Icon(icon),
    title: new Text(title),
  );
}

buildRaisedButton(context, title, f) {
  return RaisedButton(
    onPressed: () {
      f();
    },
    child: Text(title),
  );
}

showAllBottomSheet(context, f) {
  f(
      context: context,
      builder: (context) {
        return new Container(
            padding: const EdgeInsets.all(10.0), child: buildColumnChildren());
      });
}

class ShowModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return RaisedButton(
      onPressed: () {
        showAllBottomSheet(context, showBottomSheet);
      },
      child: Text("showBottomSheet"),
    );
  }
}

class ShowBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        showAllBottomSheet(context, showModalBottomSheet);
      },
      child: Text("showModalBottomSheet"),
    );
  }
}
