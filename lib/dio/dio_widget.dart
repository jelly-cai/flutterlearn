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
      "e9919016ae9400036441bb4c7bd06d885e972dd97c0b3a1e87a84aa3e0ae6d60":
          "jellycai",
      "once": "46419",
      "d58bb2de2e092801cab4a255a8a151abb12e0216331c2c1a5f23e77680490d5f":
          "123456789CAI",
      "144908d481ad8f1c968e6af891701776481b17a6739d41b719f298c2867a42da":
          "INNNG"
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
    print(response.toString());
  }
}
