import 'package:flutter_base/src/Module/Getx/model/User/Child/GeoModel.dart';

class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;

  AddressModel.fromJsonMap(Map<String, dynamic> map)
      : street = map["street"],
        suite = map["suite"],
        city = map["city"],
        zipcode = map["zipcode"],
        geo = GeoModel.fromJsonMap(map["geo"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    data['geo'] = geo == null ? null : geo.toJson();
    return data;
  }
}
