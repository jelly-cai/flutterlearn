import 'dart:math';

import 'package:flutter/material.dart';

class ChipDemoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChipDemoWidgetState();
  }
}

class ChipDemoWidgetState extends State<ChipDemoWidget> {
  List<Widget> chips = [];
  final icons = [
    Icons.add,
    Icons.security,
    Icons.shop,
    Icons.opacity,
    Icons.print,
    Icons.title,
    Icons.ac_unit,
    Icons.map,
    Icons.save,
    Icons.person
  ];

  final colors = [
    Colors.red,
    Colors.orange,
    Colors.grey,
    Colors.blue,
    Colors.lightBlueAccent
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: addChip,
          )
        ],
      ),
      body: Wrap(
        children: chips,
      ),
    );
  }

  addChip() {
    setState(() {
      chips.add(createChip());
    });
  }

  MyChip createChip() {
    var random = Random();
    var icon = icons[random.nextInt(10)];
    var color = colors[random.nextInt(4)];
    var index = chips.length;
    MyChip chip = MyChip(index: index,icon: icon,color: color,onDeleted: deleteChip);
    return chip;
  }

  deleteChip(MyChip chip) {
    setState(() {
      chips.remove(chip);
    });
  }
}

class MyChip extends StatelessWidget{
  final index;
  final icon;
  final color;
  final onDeleted;

  const MyChip({Key key, this.index, this.icon, this.color,this.onDeleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Chip(
      label: Text("add$index"),
      avatar: Icon(
        icon,
        color: color,
      ),
      onDeleted: (){
        onDeleted(this);
      },
      deleteIconColor: color,
    );
  }

}
