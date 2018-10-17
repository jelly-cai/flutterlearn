import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ChipWidget"),
      ),
      body: Center(
        child: Chip(
          label: Text("caicai"),
          avatar: Icon(
            Icons.add_location,
            color: Colors.lightBlue,
          ),
          deleteIcon: Icon(Icons.close),
          deleteButtonTooltipMessage: "删除",
          deleteIconColor: Colors.red,
          onDeleted: () {},
          backgroundColor: Colors.lightGreenAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        ),
      ),
    );
  }
}
