import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstflutterapp/json/address_model.dart';
import 'package:myfirstflutterapp/json/photo_model.dart';
import 'package:myfirstflutterapp/json/product_model.dart';
import 'package:myfirstflutterapp/json/shape_model.dart';
import 'package:myfirstflutterapp/json/student_model.dart';

class JsonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("JsonWidget"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            loadPhotos();
          },
          child: Text("点击"),
        ),
      ),
    );
  }
}

Future<Student> loadStudent() async {
  return Student.formJson(json.decode(await getStudentJson()));
}

Future<String> getStudentJson() async {
  return await rootBundle.loadString("assets/student.json");
}

loadAddress() async{
  String jsonResult = await rootBundle.loadString("assets/address.json");
  Address address = Address.fromJson(json.decode(jsonResult));
  print(address.city);
  print(address.streets[0]);
}

loadShape() async{
  String jsonResult = await rootBundle.loadString("assets/shape.json");
  Shape shape = Shape.fromJson(json.decode(jsonResult));
  print(shape.property.width);
}

loadProduct() async{
  String jsonResult = await rootBundle.loadString("assets/product.json");
  Product product = Product.fromJson(json.decode(jsonResult));
  print(product.images[0].imageName);
}

loadPhotos() async{
  String jsonResult = await rootBundle.loadString("assets/photo.json");
  List<dynamic> decodeJson = json.decode(jsonResult);
  List<Photo> photos = decodeJson.map((dynamic) => Photo.formJson(dynamic)).toList();
  print(photos[1].thumbnailUrl);
}
