import 'package:flutter/material.dart';

class AnimationOpacityWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationOpacityWidgetState();
  }
}

class AnimationOpacityWidgetState extends State {
  double animValue = 1.0;

  _changeValue() {
    setState(() {
      animValue = animValue == 0 ? 1.0 : 0.0;
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
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(
                size: 100.0,
              ),
              opacity: animValue,
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
