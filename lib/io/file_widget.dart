import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileWidget extends StatelessWidget {
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
      (await getFile()).writeAsString(controller.text);
    }
  }

  read(context) async {
    File file = await getFile();
    String value = await file.readAsString();
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("登录名"),
            children: <Widget>[Text(value)],
          );
        });
  }

  Future<File> getFile() async {
    final path = await getPath();
    return File("$path/login_info.txt");
  }

  getPath() async {
    final directory = await getTemporaryDirectory();
    return directory.path;
  }
}
