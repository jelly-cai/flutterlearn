import 'package:flutter/material.dart';

class CheckBoxListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CheckBoxListState();
  }
}

class CheckBoxListState extends State<CheckBoxListWidget> {
  bool _value = false;

  onCheckChange(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("CheckBoxListWidget"),
      ),
      body: new CheckboxListTile(
          secondary: new Icon(Icons.file_upload),
          title: new Text("新版本自动下载"),
          value: _value,
          onChanged: onCheckChange),
    );
  }
}
