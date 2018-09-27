import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RadioWidgetState();
  }
}

class RadioWidgetState extends State<RadioWidget> {
  int radioValue = 0;

  void handleRadio(index) {
    setState(() {
      radioValue = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioWidget"),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio(value: 0, groupValue: radioValue, onChanged: handleRadio),
                Text("1")
              ],
            ),
            new Radio(value: 1, groupValue: radioValue, onChanged: handleRadio),
            new Radio(value: 2, groupValue: radioValue, onChanged: handleRadio),
            new Radio(value: 3, groupValue: radioValue, onChanged: handleRadio),
          ],
        ),
      ),
    );
  }
}
