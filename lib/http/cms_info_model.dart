class CmsInfo {
  int code;
  String message;
  List<CmsInfoData> dataList;

  CmsInfo({this.code, this.message, this.dataList});

  factory CmsInfo.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonResult = json['result'];
    List<CmsInfoData> dataList =
        jsonResult.map((dynamic) => CmsInfoData.fromJson(dynamic)).toList();
    return CmsInfo(
        code: json['code'], message: json['message'], dataList: dataList);
  }
}

class CmsInfoData {
  String reportDate;
  int contentId;
  String title;
  String point;
  String url;

  CmsInfoData(
      {this.reportDate, this.contentId, this.title, this.point, this.url});

  factory CmsInfoData.fromJson(Map<String, dynamic> json) {
    return CmsInfoData(
        reportDate: json['reportDate'],
        contentId: json['contentId'],
        title: json['title'],
        point: json['point'],
        url: json['url']);
  }
}
