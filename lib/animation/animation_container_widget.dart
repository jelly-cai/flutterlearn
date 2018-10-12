import 'package:flutter/material.dart';

class AnimationContainerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationContainerWidgetState();
  }
}

class AnimationContainerWidgetState extends State {
  double animValue = 100.0;

  _changeValue(){
    setState(() {
      animValue = animValue == 0 ? 100.0 : 0.0;
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
            AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Text("123"),
              padding: EdgeInsets.only(bottom: animValue),
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
