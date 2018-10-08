class Address{

  String city;
  List<String> streets;

  Address({this.city,this.streets});

  factory Address.fromJson(Map<String, dynamic> parsedJson){
    return Address(city: parsedJson['city'],streets: List<String>.from(parsedJson['streets']));
  }

}