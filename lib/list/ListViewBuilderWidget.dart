import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewBuilderWidgetState();
  }
}

class ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  final List<Item> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 20; i++) {
      items.add(Item("标题", Icons.title));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("ListViewBuilderWidget"),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return new ListItemWidget(item: items[position]);
        },
        itemCount: items.length,
      ),
    );
  }
}

class Item {
  final String title;
  final IconData icon;

  Item(this.title, this.icon);
}

class ListItemWidget extends StatelessWidget {
  final Item item;

  const ListItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
    );
  }
}
