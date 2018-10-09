import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstflutterapp/http/cms_info_model.dart';

class HttpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            aliveConnect();
          },
          child: Text("点击"),
        ),
      ),
    );
  }
}

postRequest() {
  var url = "http://183.57.47.83:1080/cmsInfo/query_first";
  http.post(url, body: {"orgCode": "0001"}).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}

aliveConnect() {
  var client = new http.Client();
  client.post("http://183.57.47.83:1080/cmsInfo/query_first",
      body: {"orgCode": "0001"}).then((response) {
    CmsInfo cmsInfo = CmsInfo.fromJson(json.decode(response.body));
    client.get(cmsInfo.dataList[0].url).then((response) {
      print(response.body);
    }).whenComplete(client.close);
  });
}
