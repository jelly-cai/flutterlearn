import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliderWidgetState();
  }
}

class SliderWidgetState extends State<SliderWidget> {
  double _value = 0.0;

  void changeValue(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SliderWidget"),
      ),
      body: Center(
        child: Slider(
            label: "进度",
            max: 100.0,
            min: 0.0,
            value: _value,
            onChanged: changeValue),
      ),
    );
  }
}
