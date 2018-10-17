import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/tooltip/my_tool_tip_widget.dart';

class UseMyToolTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("UseMyToolTipWidget"),
      ),
      body: Center(
        child: MyTooltip(
          message: "查看详情",
          borderRadius: 20.0,
          backgroundColor: Colors.red,
          widthFactor: 2.0,
          heightFactor: 1.0,
          child: Icon(Icons.details),
        ),
      ),
    );
  }
}
