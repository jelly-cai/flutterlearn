import 'package:flutter/material.dart';

class CurvedAnimationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CurvedAnimationWidgetState();
  }
}

class CurvedAnimationWidgetState extends State
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 200.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceInOut))
          ..addListener(() {
            setState(() {
              print(controller.value);
            });
          });
    startAnimation();
  }

  startAnimation() {
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CurvedAnimationWidget"),
      ),
      body: Center(
        child: GestureDetector(
          child: FlutterLogo(size: animation.value),
          onTap: startAnimation,
        ),
      ),
    );
  }
}
