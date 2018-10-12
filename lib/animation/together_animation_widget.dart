import 'package:flutter/material.dart';

class TogetherAnimationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TogetherAnimationWidgetState();
  }
}

class TogetherAnimationWidgetState extends State
    with SingleTickerProviderStateMixin {
  Tween<double> animationSize = Tween(begin: 0.0, end: 200.0);
  Tween<double> animationOpacity = Tween(begin: 0.1, end: 1.0);
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TogetherAnimationWidget"),
      ),
      body: Center(
        child: Opacity(
            opacity: animationOpacity.evaluate(animation),
            child: Container(
              child: FlutterLogo(),
              width: animationSize.evaluate(animation),
              height: animationSize.evaluate(animation),
            )),
      ),
    );
  }
}
