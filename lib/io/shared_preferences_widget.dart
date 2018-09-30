import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPreferencesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferencesWidget"),
      ),
      body: Center(
          child: Row(
        children: <Widget>[
          RaisedButton(
            onPressed: save,
            child: Text("save"),
          ),
          RaisedButton(
            onPressed: read,
            child: Text("read"),
          ),
        ],
      )),
    );
  }
}

save() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await sharedPreferences.setString("testkey", "testvalue");
}

read() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  print(sharedPreferences.getString("testkey"));
}
