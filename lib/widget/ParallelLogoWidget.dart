import 'package:flutter/material.dart';

class ParallelLogoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ParallelLogoWidgetState();
  }
}

class _ParallelLogoWidgetState extends State<ParallelLogoWidget>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));
    animation = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new _AnimationLogo(animation: animation);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}

class _AnimationLogo extends AnimatedWidget {
  final _opacityTween = new Tween(begin: 0.0, end: 1.0);
  final _sizeTween = new Tween(begin: 0.0, end: 300.0);

  _AnimationLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Animation<double> animation = listenable;
    return new Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: new Container(
            width: _sizeTween.evaluate(animation),
            height: _sizeTween.evaluate(animation),
            child: new FlutterLogo()));
  }

}
