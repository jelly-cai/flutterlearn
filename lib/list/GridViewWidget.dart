import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("GridViewWidget1")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0),
        children: <Widget>[
          buildItem(Icons.cake),
          buildItem(Icons.title),
          buildItem(Icons.account_circle)
        ],
      ),
    );
  }
}

buildItem(icon) {
  return Container(
    child: Icon(icon, size: 50.0),
    color: Colors.blue,
  );
}
