import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformWidget extends StatelessWidget {
  static const platform = const MethodChannel('com.jelly.test/android');
  static const eventChannel = const EventChannel('com.jelly.test/netChanged');

  showToast(String msg) async{
    await platform.invokeMethod("showToast", {"msg": msg});
  }

  Future<String> getAndroidTime() async{
    var time = await platform.invokeMethod("getAndroidTime");
    return time;
  }

  initReceiver(){
    eventChannel.receiveBroadcastStream().listen(_onEvent);
  }

  _onEvent(Object event){
    showToast(event);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PlatformWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            initReceiver();
          },
          child: Text("点击"),
        ),
      ),
    );
  }
}
