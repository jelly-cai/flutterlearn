import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LinearProgressIndicatorWidgetState();
  }
}

class LinearProgressIndicatorWidgetState extends State {
  var _progressValue = 0.0;

  _handleProgress(){
    setState(() {
      _progressValue += 0.1;
      if(_progressValue > 1.0){
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
          LinearProgressIndicator(
            value: _progressValue,
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
