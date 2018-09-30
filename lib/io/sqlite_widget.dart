import 'dart:async';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqLiteWidget extends StatelessWidget{

  final TextEditingController controller = TextEditingController();

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
      final database = await getDataBase();
      return database.transaction((trx){
        trx.rawInsert("INSERT INTO user(name) VALUES('${controller.text}')");
      });
    }
  }

  read(context) async {
    final database = await getDataBase();
    List<Map> list = await database.rawQuery("SELECT * FROM user");
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("登录名"),
            children: <Widget>[Text("$list")],
          );
        });
  }


  Future<Database> getDataBase() async{
    final path = await getDbPath();
    Database dataBase = await openDatabase(path,version: 1,onCreate: (Database db,int version) async{
      await db.execute("CREATE TABLE user(id INTEGER PRIMARY KEY,name TEXT)");
    });
    return dataBase;
  }

  Future<String> getDbPath() async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path + "/name.db";
  }


}