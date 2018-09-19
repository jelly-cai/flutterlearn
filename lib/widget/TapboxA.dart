import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TapboxAState();
  }
}

class TapboxAState extends State {
  bool _isActive = false;

  void _handleActive(){
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new Container(
        child: new Center(
          child: new Text(
            _isActive ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: _isActive ? Colors.lightGreen[700] : Colors.grey[500]),
      ),
    onTap: _handleActive,);
  }
}
