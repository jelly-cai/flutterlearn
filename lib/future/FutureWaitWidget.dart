import 'dart:async';

import 'package:flutter/material.dart';

class FutureWaitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    startEat();
    return Container(
      child: Text("吃饭"),
    );
  }

  void startEat() {
    enterRestaurant()
        .then((value) => startChat())
        .then((value) => playPhone())
        .then((value) => waitForDinner());
  }

  Future enterRestaurant() async {
    print("和朋友进入了一家餐馆");
  }

  Future startChat() async {
    print("我们朋友聊起家常");
  }

  Future playPhone() async {
    print("等了好好久了，我还是玩会手机吧");
  }

  Future waitForDinner() async {
    print("我们的菜来了，我要开始吃饭了");
  }
}
