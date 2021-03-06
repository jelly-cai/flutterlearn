import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationWidgetState();
  }
}

class AnimationWidgetState extends State with SingleTickerProviderStateMixin {
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
          print(animateController.value);
          print(animate.value);
        });
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
