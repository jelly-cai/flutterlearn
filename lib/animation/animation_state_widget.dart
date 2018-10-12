import 'package:flutter/material.dart';

class AnimationStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationStateWidgetState();
  }
}

class AnimationStateWidgetState extends State with SingleTickerProviderStateMixin {
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
        setState(() {
        });
      })..addStatusListener((status){
        if(status == AnimationStatus.forward){
          print("动画开始");
        }else if(status == AnimationStatus.completed){
          print("动画完成");
          animateController.reverse();
        }else if(status == AnimationStatus.reverse){
          print("动画反转");
        }else if(status == AnimationStatus.dismissed){
          print("动画消失");
          animateController.forward();
        }
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
          child: Text(animate.value.toInt() == 0
              ? "点击"
              : animate.value.toInt().toString()),
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
