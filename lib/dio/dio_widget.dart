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
      "eccd6f4b121f70ff193ce181335a39a5fcfbc1fc5801946cf8048941b8c9f127":
          "jellycai",
      "once": "88428",
      "e162a019c7897872f86040cff47450589a8a1d0da0cd5f556076f5b7e4619534":
          "123456789CAI",
      "fe41846f04079cd18d1cd46ddd5bab5bc94c18fd2fb7200f7efc0481deab39cc":
          "dmdyo"
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
