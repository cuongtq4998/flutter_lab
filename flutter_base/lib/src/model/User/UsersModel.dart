import 'package:flutter_base/src/model/User/Child/AddressModel.dart';
import 'package:flutter_base/src/model/User/Child/CompanyModel.dart';

class UsersModel {
  // properties
  int id;
  String name;
  String username;
  String email;
  AddressModel address;
  String phone;
  String website;
  CompanyModel company;

  //init
  UsersModel.fromJsonMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        username = map["username"],
        email = map["email"],
        address = AddressModel.fromJsonMap(map["address"]),
        phone = map["phone"],
        website = map["website"],
        company = CompanyModel.fromJsonMap(map["company"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['address'] = address == null ? null : address.toJson();
    data['phone'] = phone;
    data['website'] = website;
    data['company'] = company == null ? null : company.toJson();
    return data;
  }
}
