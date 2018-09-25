import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/widget/PageTwoWidget.dart';

class PageOneWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageOneWidgetState();
  }
}

class PageOneWidgetState extends State<PageOneWidget>{
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void onTextClear(){
    setState(() {
      _userController.text = "";
      _passwordController.text = "";
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(children: <Widget>[
      new TextField(
        controller: _userController,
        decoration: new InputDecoration(
            contentPadding: const EdgeInsets.only(top: 10.0),
            icon: new Icon(Icons.perm_identity),
            labelText: "请输入用户名",
            helperText: "注册时填写的名字"),
      ),
      new TextField(
        controller: _passwordController,
        decoration: new InputDecoration(
            contentPadding: const EdgeInsets.only(top: 10.0),
            icon: new Icon(Icons.lock),
            labelText: "请输入密码",
            helperText: "登录密码"),
        obscureText: true,
      ),
      new RaisedButton(onPressed: (){
        var userName = _userController.text.toString();
        var passWord = _passwordController.text.toString();
        if(userName == passWord){
          Navigator.of(context).push(new PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimatio){
              return new PageTwoWidget(userName);
          }));
        }else{
          Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("登录失败，用户名密码有误")));
        }

      },child: new Text("登录"),)
    ]);
  }
}

