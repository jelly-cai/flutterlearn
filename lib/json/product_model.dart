class Product {
  int id;
  String name;
  List<Image> images;

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> json) {
    var list = json['images'] as List;
    List<Image> imageList =
        list.map((dynamic) => Image.formJson(dynamic)).toList();
    return Product(id: json['id'], name: json['name'], images: imageList);
  }
}

class Image {
  int id;
  String imageName;

  Image({this.id, this.imageName});

  factory Image.formJson(Map<String, dynamic> json) {
    return Image(id: json['id'], imageName: json['imageName']);
  }
}
