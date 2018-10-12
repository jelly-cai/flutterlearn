import 'package:flutter/material.dart';

class AnimationCrossFadeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationCrossFadeWidgetState();
  }
}

class AnimationCrossFadeWidgetState extends State {
  bool _animValue = true;

  _changeValue() {
    setState(() {
      _animValue = _animValue ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationContainerWidget"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: FlutterLogo(
                size: 100.0,
              ),
              secondChild: Icon(
                Icons.ac_unit,
                size: 100.0,
              ),
              crossFadeState: _animValue
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            RaisedButton(
              child: Text("123"),
              onPressed: _changeValue,
            )
          ],
        ),
      ),
    );
  }
}
