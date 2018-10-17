import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTipWidget"),
      ),
      body: Center(
        child: Tooltip(
          message: "点击删除",
          preferBelow: false,
          verticalOffset: 60.0,
          height: 100.0,
          child: Icon(
            Icons.delete,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
