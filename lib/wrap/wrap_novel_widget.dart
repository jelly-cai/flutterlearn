import 'package:flutter/material.dart';

class WrapNovelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("WrapNovelWidget"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 20.0,
            direction: Axis.horizontal,
            children: <Widget>[
              MyButton(text: "斗罗大陆"),
              MyButton(text: "遮天"),
              MyButton(text: "盗墓笔记"),
              MyButton(text: "天龙八部"),
              MyButton(text: "凡人修仙传"),
              MyButton(text: "大主宰"),
              MyButton(text: "仙逆"),
              MyButton(text: "斗鱼"),
              Wrap(children: <Widget>[MyButton(text: "校花112222333"),Text("adadada")]),
              MyButton(text: "酒神"),
              MyButton(text: "最好的我们")
            ],
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  final text;

  const MyButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlineButton(
      borderSide: BorderSide(
          color: Colors.blueAccent, width: 2.0, style: BorderStyle.solid),
      disabledBorderColor: Colors.grey,
      highlightedBorderColor: Colors.redAccent,
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(text),
          action: SnackBarAction(label: "撤销", onPressed: () {}),
        ));
      },
      child: Text(text),
    );
  }
}
