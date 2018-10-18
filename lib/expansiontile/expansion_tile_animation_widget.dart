import 'package:flutter/material.dart';

class ExpansionTileAnimationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionTileAnimationWidgetState();
  }
}

class ExpansionTileAnimationWidgetState extends State
    with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  bool isExpand = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    animation = Tween(begin: 0.0, end: 0.25).animate(controller);
  }

  _expansionChanged(bool) {
    isExpand = bool;
    setState(() {
      if (bool) {
        controller.forward();
      } else {
        controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTileAnimationWidget"),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("更多精彩"),
            backgroundColor: Colors.blueAccent.withOpacity(0.1),
            initiallyExpanded: false,
            leading: Icon(
              Icons.whatshot,
              color: Colors.redAccent,
            ),
            trailing: RotationTransition(
              turns: animation,
              child: Icon(
                Icons.chevron_right,
                color: isExpand ? Colors.red : Colors.grey,
              ),
            ),
            onExpansionChanged: (bool) {
              _expansionChanged(bool);
            },
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.blueAccent),
                height: 100.0,
                margin: EdgeInsets.all(5.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
