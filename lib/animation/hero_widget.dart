import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HeroWidgetWidget();
  }
}

class HeroWidgetWidget extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HeroWidget"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text("Second Page"),
                ),
                body: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  color: Colors.lightBlueAccent,
                  child: Hero(
                      tag: 'Hero',
                      child: SizedBox(
                        width: 100.0,
                        child: Icon(
                          Icons.ac_unit,
                          size: 200.0,
                        ),
                      )),
                ),
              );
            }));
          },
          child: Hero(
              tag: "Hero",
              child: Icon(
                Icons.shop,
                size: 100.0,
              )),
        ),
      ),
    );
  }
}
