import 'dart:async';

import 'package:flutter/material.dart';

class HeroLoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HeroLoginWidgetWidget();
  }
}

class HeroLoginWidgetWidget extends State with TickerProviderStateMixin {
  bool isLogin = false;

  _loginClick() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
      setState(() {
        isLogin = false;
      });
    });
    setState(() {
      isLogin = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var loginBtnWidget;
    if (isLogin) {
      AnimationController animationController =
          AnimationController(vsync: this, duration: Duration(seconds: 2));
      Animation<Color> animation = Tween(begin: Colors.white, end: Colors.black)
          .animate(animationController);
      loginBtnWidget = CircularProgressIndicator(
          backgroundColor: Colors.white, valueColor: animation);
    } else {
      loginBtnWidget = Text('登录', style: TextStyle(color: Colors.white));
    }

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset("assets/apple-logo.jpg")),
    );
    final userName = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
            hintText: '请输入用户名',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final password = TextFormField(
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "请输入密码",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: Colors.lightBlueAccent.shade100,
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            child: MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: _loginClick,
                child: loginBtnWidget)));

    final forgotLabel = FlatButton(
      child: Text("忘记密码？", style: TextStyle(color: Colors.black54)),
      onPressed: () {},
    );

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("HeroWidget"),
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              userName,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel
            ],
          ),
        )));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    isLogin = false;
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var logo = Hero(
        tag: "hero",
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/apple-logo.jpg"))));

    var welcome = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Welcome Flutter',
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                decoration: TextDecoration.none)));

    final text = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
            "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                decoration: TextDecoration.none)));

    final body = Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent])),
        child: Column(children: <Widget>[logo, welcome, text]));

    return body;
  }
}
