import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class DioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DioWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            quest();
          },
          child: Text("点击"),
        ),
      ),
    );
  }

  void quest() async {
    FormData formData = FormData.from({
      "next": "/",
      "aa0f6addc89e896b171e086603ccf5dee5eddb37bbc5930883373383eeee915f":
          "jellycai",
      "once": "94416",
      "1f6eace3a3edf084db1fdde410a479af5ab8bd26d3eb7efd8d5b838ed0988ab5":
          "123456789CAI",
      "e75c6e6c7e15d797bc7e710005147b7314ad3f8a8aa9ec6f9cf5f80c39e57744":
          "SGJSM"
    });
    Dio dio = Dio();
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    CookieJar cj = PersistCookieJar(tempPath);
    dio.cookieJar = cj;
    dio.options.followRedirects = true;
    dio.options.validateStatus = (status){
      print(status);
      return true;
    };
    Response response =
        await dio.post("https://www.v2ex.com/signin", data: formData);
    Response response2 = await dio.get("https://www.v2ex.com/");
    print(response2.data);
  }
}
