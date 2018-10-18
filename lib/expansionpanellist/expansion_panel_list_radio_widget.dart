import 'package:flutter/material.dart';

class ExpansionPanelListRadioWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionPanelListRadioWidgetState();
  }
}

class ExpansionPanelListRadioWidgetState
    extends State<ExpansionPanelListRadioWidget> {
  var currentPanelIndex = 1;
  List<MyExpansionPanel> myDataList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myDataList.add(MyExpansionPanel(title: "标题一", index: 1));
    myDataList.add(MyExpansionPanel(title: "标题二", index: 2));
    myDataList.add(MyExpansionPanel(title: "标题三", index: 3));
    myDataList.add(MyExpansionPanel(title: "标题四", index: 4));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelListWidget"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: myDataList.map((panel) => panel.build()).toList(),
          initialOpenPanelValue: currentPanelIndex,
        ),
      ),
    );
  }
}

class MyExpansionPanel {
  final title;
  final index;

  MyExpansionPanel({this.title, this.index});

  ExpansionPanelRadio build() {
    // TODO: implement build
    return ExpansionPanelRadio(
        headerBuilder: (index, opened) {
          return ListTile(title: Text(title));
        },
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            height: 100.0,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Icon(Icons.security, size: 35.0),
          ),
        ),
        value: index);
  }
}
