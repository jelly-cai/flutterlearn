import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwitchWidgetState();
  }
}

class SwitchWidgetState extends State<SwitchWidget> {

  bool _value = false;

  void handleSwitch(value){
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchWidget"),
      ),
      body: Center(
        child: Switch(value: _value, onChanged: handleSwitch),
      ),
    );
  }
}
