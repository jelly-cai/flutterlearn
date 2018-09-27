import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CheckBoxWidgetState();
  }
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxWidget"),
      ),
      body: Center(child: Checkbox(value: _value, onChanged: (checked){
        setState(() {
          _value = checked;
        });
      }),),
    );
  }
}
