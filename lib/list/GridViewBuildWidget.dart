import 'package:flutter/material.dart';

class GridViewBuildWidget extends StatelessWidget {
  final List<Item> items = [];

  initItems() {
    for (int i = 0; i < 20; i++) {
      items.add(Item(Icons.add, "12"));
    }
  }

  @override
  Widget build(BuildContext context) {
    initItems();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewBuildWidget"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, position) {
          return GridViewItemWidget(item: items[position]);
        },
        itemCount: items.length,
      ),
    );
  }
}

class Item {
  final IconData icon;
  final String tile;

  Item(this.icon, this.tile);
}

class GridViewItemWidget extends StatelessWidget {
  final Item item;

  const GridViewItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.tile),
    );
  }
}
