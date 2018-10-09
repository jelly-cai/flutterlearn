import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CircularProgressIndicatorWidgetState();
  }
}

class CircularProgressIndicatorWidgetState extends State {
  var _progressValue = 0.0;

  _handleProgress() {
    setState(() {
      _progressValue += 0.1;
      if (_progressValue > 1.0) {
        _progressValue = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LinearProgressIndicator"),
      ),
      body: Column(
        children: <Widget>[
          CircularProgressIndicator(
            value: _progressValue,
            strokeWidth: 10.0,
          ),
          RaisedButton(
            onPressed: _handleProgress,
            child: Text("改变进度"),
          )
        ],
      ),
    );
  }
}
