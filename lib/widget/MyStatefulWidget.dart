import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyStatefulWidgetState();
  }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  var count = 0;

  void addCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("MyStatefulWidget"),
      ),
      body: new Center(
        child: new Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: new Icon(Icons.add),
      ),
    );
  }
}
