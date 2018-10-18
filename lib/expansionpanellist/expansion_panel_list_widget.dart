import 'package:flutter/material.dart';

class ExpansionPanelListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionPanelListWidgetState();
  }
}

class ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  List<MyExpansionPanel> myDataList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myDataList.add(MyExpansionPanel(title: "标题一"));
    myDataList.add(MyExpansionPanel(title: "标题二"));
    myDataList.add(MyExpansionPanel(title: "标题三"));
    myDataList.add(MyExpansionPanel(title: "标题四"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelListWidget"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          children: myDataList.map((panel) => panel.build()).toList(),
          expansionCallback: (index, isExpand) {
            setState(() {
              print(isExpand);
              myDataList[index].isExpand = !isExpand;
            });
          },
        ),
      ),
    );
  }
}

class MyExpansionPanel {
  final title;
  bool isExpand;

  MyExpansionPanel({this.title, this.isExpand = false});

  ExpansionPanel build() {
    // TODO: implement build
    return ExpansionPanel(
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
        isExpanded: isExpand);
  }
}
