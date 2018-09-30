import 'dart:async';

import 'package:flutter/material.dart';

class FutureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    startEat();
    return Container(
      child: Text("吃饭"),
    );
  }

  void startEat() {
    print(enterRestaurant());

    Future<String> future = new Future(waitForDinner);
    future.then((value) {
      print(value);
    });
    print(startChat());
    print(playPhone());
  }

  enterRestaurant() {
    return "和朋友进入了一家餐馆";
  }

  String waitForDinner() {
    return "我们的菜来了，我要开始吃饭了";
  }

  startChat() {
    return "我们朋友聊起家常";
  }

  playPhone() {
    return "等了好好久了，我还是玩会手机吧";
  }
}
