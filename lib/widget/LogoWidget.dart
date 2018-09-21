import 'package:flutter/material.dart';

class LogoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LogoAppState();
  }
}

class _AnimatedLogoWidget extends AnimatedWidget {

  _AnimatedLogoWidget({Key key,Animation animation}) : super(key: key,listenable:animation);

  @override
  Widget build(BuildContext context) {
    final Animation animation = listenable;
    return new Center(
        child: new Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      height: animation.value,
      width: animation.value,
      child: new FlutterLogo(),
    ));
  }
}

class _LogoAppState extends State<LogoWidget> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAnimation();
  }

  void initAnimation() {
    if (controller == null) {
      controller = new AnimationController(
          vsync: this, duration: const Duration(milliseconds: 2000));
      animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
      animation.addListener(() {
        setState(() {});
      });
      animation.addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          controller.reverse();
        } else if (state == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    }
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new _AnimatedLogoWidget(animation: animation,);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
