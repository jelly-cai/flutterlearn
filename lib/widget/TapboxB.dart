import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class TapboxB extends StatelessWidget {

  TapboxB({Key key,this.isActive: false,@required this.onChanged}) : super(key: key);

  bool isActive;
  ValueChanged<bool> onChanged;

  void _handleTap(){
    onChanged(!isActive);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new Container(
        child: new Center(
          child: new Text(
            isActive ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: isActive ? Colors.lightGreen[700] : Colors.grey[500]),
      ),
    onTap: _handleTap,);
  }
}
