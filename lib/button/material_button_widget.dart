import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialButtonWidget"),
      ),
      body: Center(
        child: new Material(
          //背景色
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 5.0,
          color: Colors.lightBlueAccent,
          shape: new RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.0,
              style: BorderStyle.none
            ),
            //每个角落的半径
            borderRadius:new BorderRadius.circular(10.0),
          ),
          child: new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Text('你好 Material',style: new TextStyle(fontSize: 14.0),),
          ),
        )
      ),
    );
  }
}
