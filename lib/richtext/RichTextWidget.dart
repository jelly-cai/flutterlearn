import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RichTextWidget"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: null,
            style: TextStyle(color: Colors.blueAccent),
            children: [
              TextSpan(text: "123",style: TextStyle(fontSize: 19.0, color: Colors.red), children: [
                TextSpan(
                    text: "456",
                    children: [TextSpan(text: "789")])
              ])
            ],
          ),
        ),
      ),
    );
  }
}
