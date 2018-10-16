import 'package:flutter/material.dart';

class AnimationTextWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationTextWidgetState();
  }
}

class AnimationTextWidgetState extends State
    with SingleTickerProviderStateMixin {
  Animation<double> animate;
  AnimationController animateController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animateController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    animate = Tween(begin: 0.0, end: 100.0).animate(animateController)
      ..addListener(() {

      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationWidgetState"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: startAnimate,
          child: MyAnimateTextWidget(animate),
        ),
      ),
    );
  }

  startAnimate() {
    animateController.forward(from: 0.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animateController.dispose();
  }
}

class MyAnimateTextWidget extends AnimatedWidget {
  MyAnimateTextWidget(Animation<double> animation)
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Animation<double> animation = listenable;
    return Center(child: Text(animation.value.toInt().toString()),);
  }
}
