import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsLoginWidget extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final keyName = "name";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PrefsLoginWidget"),
      ),
      body: Center(child: Builder(builder: (context) {
        return Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(hintText: "请输入账户"),
            ),
            RaisedButton(
              child: Text("保存"),
              onPressed: () {
                save(context);
              },
            ),
            RaisedButton(
              child: Text("阅读"),
              onPressed: () {
                read(context);
              },
            )
          ],
        );
      })),
    );
  }

  save(context) async {
    if (controller.text.isEmpty) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("不能为空"),
        action: SnackBarAction(label: "关闭", onPressed: () {}),
      ));
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString(keyName, controller.text);
    }
  }

  read(context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("登录名"),
            children: <Widget>[Text(preferences.getString(keyName))],
          );
        });
  }
}
