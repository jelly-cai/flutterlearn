import 'package:flutter/material.dart';

class MyGestureDetectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("MyGestureDetectorWidget"),
      ),
      body: new GestureDetector(
        child: new Icon(
          Icons.android,
          size: 200.0,
        ),
        onTap: (){
          print("onTap");
        },
        onDoubleTap: (){
          print("onDoubleTap");
        },
        onLongPress: (){
          print("onLongPress");
        },
        onVerticalDragStart: (details){
          print(details.globalPosition.toString());
        },
        onVerticalDragEnd: (details){
          print(details.primaryVelocity.toString());
        },
      ),
    );
  }
}
