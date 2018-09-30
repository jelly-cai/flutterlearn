import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PathProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PathProviderWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async{
            final directory1 = await getTemporaryDirectory();
            final directory2 = await getApplicationDocumentsDirectory();
            final directory3 = await getExternalStorageDirectory();
            print(directory1.path);
            print(directory2.path);
            print(directory3.path);
          },
          child: Text("获取路径"),
        ),
      ),
    );
  }
}
