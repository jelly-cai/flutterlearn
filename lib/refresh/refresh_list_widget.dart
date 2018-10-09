import 'dart:async';

import 'package:flutter/material.dart';

class RefreshListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RefreshListWidgetState();
  }
}

class RefreshListWidgetState extends State<RefreshListWidget> {
  List<String> dataList = List.generate(20, (i) => "item$i");
  ScrollController controller = ScrollController();
  bool isLoadingMore = false;
  bool isRefresh = false;

  Future<Null> _handleRefresh() async {
    if (isRefresh) {
      return Null;
    }
    isRefresh = true;
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        dataList.clear();
        dataList = List.generate(20, (i) => "item$i");
        isRefresh = false;
      });
    });
  }

  Future<Null> _handleLoadMore() async {
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        dataList.addAll(List.generate(10, (i) => "item${dataList.length + i}"));
        isLoadingMore = false;
      });
    });
  }

  getLoadMoreView() {
    return Container(child: Center(child: CircularProgressIndicator()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent &&
          !isLoadingMore) {
        isLoadingMore = true;
        _handleLoadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("RefreshListWidgetState"),
        ),
        body: RefreshIndicator(
            child: ListView.builder(
              itemCount: dataList.length + 1,
              itemBuilder: (context, index) {
                if (index == dataList.length) {
                  return getLoadMoreView();
                } else {
                  return Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(child: Text(dataList[index])));
                }
              },
              controller: controller,
            ),
            onRefresh: _handleRefresh));
  }
}
