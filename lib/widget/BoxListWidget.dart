import 'package:flutter/material.dart';

class BoxListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BoxListState();
  }
}

class BoxListState extends State<BoxListWidget> {
  bool _uploadValue = false;
  int _timeValue = 1;
  bool _newValue = false;

  void handleUploadValue(value) {
    setState(() {
      _uploadValue = value;
    });
  }

  void handleTimeValue(value) {
    setState(() {
      _timeValue = value;
    });
  }

  void handleNewValue(value) {
    setState(() {
      _newValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("BoxListWidget"),
      ),
      body: new Column(
        children: <Widget>[
          new CheckboxListTile(
              secondary: new Icon(Icons.file_upload),
              title: new Text("新版本自动下载"),
              value: _uploadValue,
              onChanged: handleUploadValue),
          new Divider(height: 1.0),
          new RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: new Icon(Icons.timer),
              title: new Text("定时提醒间隔"),
              subtitle: new Text("10分钟"),
              value: 1,
              groupValue: _timeValue,
              onChanged: handleTimeValue),
          new RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: new Icon(Icons.timer),
              title: new Text("定时提醒间隔"),
              subtitle: new Text("30分钟"),
              value: 2,
              groupValue: _timeValue,
              onChanged: handleTimeValue),
          new RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: new Icon(Icons.timer),
              title: new Text("定时提醒间隔"),
              subtitle: new Text("一个小时"),
              value: 3,
              groupValue: _timeValue,
              onChanged: handleTimeValue),
          new Divider(height: 1.0),
          new SwitchListTile(
              secondary: new Icon(Icons.chat),
              title: new Text("新消息提醒"),
              value: _newValue,
              onChanged: handleNewValue)
        ],
      ),
    );
  }
}
