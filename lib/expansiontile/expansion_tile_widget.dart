import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTileWidget"),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("更多精彩"),
            backgroundColor: Colors.blueAccent.withOpacity(0.1),
            initiallyExpanded: true,
            leading: Icon(
              Icons.whatshot,
              color: Colors.redAccent,
            ),
            trailing: Icon(Icons.chevron_right),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Colors.blueAccent),
                height: 100.0,
                margin: EdgeInsets.all(5.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
