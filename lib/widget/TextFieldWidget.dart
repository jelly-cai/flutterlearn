import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TextFieldWidgetState();
  }
}

class TextFieldWidgetState extends State<TextFieldWidget> {

  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    controller.addListener(() {
      setState(() {

      });
    });
    return new Column(children: <Widget>[new Container(
        child: new TextField(
          decoration: new InputDecoration(hintText: "please input password"),
          controller: controller,
        )),new Text(controller.text)],);
  }
}
