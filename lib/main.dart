import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/progress/circular_progress_indicator.dart';
import 'package:myfirstflutterapp/widget/PageOneWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(primaryColor: Colors.blue),
      home: CircularProgressIndicatorWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("测试"),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.red,
      ),
      body: new PageOneWidget(),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      endDrawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage(
                            "http://t2.hddhhn.com/uploads/tu/201612/98/st93.png"))),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "http://tva2.sinaimg.cn/crop.0.3.707.707.180/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg"),
                ),
                accountName: new Text("JellyCai"),
                accountEmail: new Text("jellycai@gmail.com")),
            new ListTile(
              leading: new Icon(Icons.refresh),
              title: new Text("刷新"),
            ),
            new ListTile(
              leading: new Icon(Icons.help),
              title: new Text("帮助"),
            ),
            new ListTile(
              leading: new Icon(Icons.chat),
              title: new Text("会话"),
            ),
            new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text("设置"),
            )
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        onTap: (currentIndex){
          print("点击" + currentIndex.toString());
        },
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart), title: new Text("购物车")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text("会话")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text("我的"))
        ],
        fixedColor: Colors.red,
        currentIndex: 0,
      ),
    );
  }

}


