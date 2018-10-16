import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliverAppBarWidgetState();
  }
}

class SliverAppBarWidgetState extends State with TickerProviderStateMixin {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("我是测试标题$i", Icons.cake));
    }
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("我是一个帅气的标题",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      background: Image.network(
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
                          fit: BoxFit.fill)),
                ),
                SliverPersistentHeader(
                  floating: false,
                  pinned: false,
                  delegate: _SliverAppBarDelegate(TabBar(
                      controller: TabController(length: 2, vsync: this),
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(icon: Icon(Icons.security), text: "security"),
                        Tab(icon: Icon(Icons.cake), text: "cake")
                      ])),
                )
              ];
            },
            body: Center(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListItemWidget(listData[index]);
                    },
                    itemCount: listData.length))));
  }
}

class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      child: new ListTile(
        leading: new Icon(listItem.iconData),
        title: new Text(listItem.title),
      ),
      onTap: () {},
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(child: _tabBar);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
