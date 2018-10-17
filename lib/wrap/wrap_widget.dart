import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("WrapWidget")),
      body: Wrap(
        spacing: 10.0,
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        children: <Widget>[
          MyButton(text: "第1集"),
          MyButton(text: "第2集"),
          MyButton(text: "第3集"),
          MyButton(text: "第4集"),
          MyButton(text: "第5集"),
          MyButton(text: "第6集"),
          MyButton(text: "第7集"),
          MyButton(text: "第8集"),
          MyButton(text: "第9集"),
          MyButton(text: "第10集"),
          MyButton(text: "第11集"),
          MyButton(text: "第12集"),
          MyButton(text: "第13集"),
          MyButton(text: "第14集"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;

  const MyButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: RaisedButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(text),
          action: SnackBarAction(label: "撤回", onPressed: () {}),
        ));
      },
      child: Text(text),
    ));
  }
}
