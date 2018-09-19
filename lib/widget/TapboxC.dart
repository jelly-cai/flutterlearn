import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class TapboxC extends StatefulWidget {
  TapboxC({this.active: false, @required this.onChanged});

  bool active;
  ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TapboxCState();
  }
}

class TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDwon(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new Container(
        child: new Center(
          child: new Text(
            widget.active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[500],
            border: _highlight ? new Border.all(color: Colors.teal[700],width: 10.0) : null),
      ),
      onTap: _handleTap,
      onTapDown: _handleTapDwon,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
    );
  }
}
