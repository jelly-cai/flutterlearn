import 'package:flutter/material.dart';

class LoadAssetsImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Image.asset("assets/macbook_sierra_featured.jpg"),
      width: 300.0,
      height: 300.0,
    );
  }
}
