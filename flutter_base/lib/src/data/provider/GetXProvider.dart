import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_base/src/data/model/PhotosModel.dart';
import 'package:flutter_base/src/data/model/PostModel.dart';
import 'package:flutter_base/src/data/model/User/UsersModel.dart';
import '../../config/domain.dart';

class GetXProvider {
  var urlpPost = Domain.urlPost;
  var urlUser = Domain.urlUser;
  var urlPhotos = Domain.urlPhotos;

  Future<http.Response> uriParse(String uri) async {
    return await http
        .get(Uri.parse(uri), headers: {"Accept": "application/json"});
  }

  getPost() async {
    try {
      var response = await uriParse(urlpPost);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<PostModel> listPost =
            jsonResponse.map((model) => PostModel.fromJsonMap(model)).toList();
        return listPost;
      } else {
        print("error");
      }
    } catch (_) {}
  }

  getUser() async {
    try {
      var response = await uriParse(urlUser);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<UsersModel> listUser =
            jsonResponse.map((model) => UsersModel.fromJsonMap(model)).toList();
        return listUser;
      } else {
        print("erorr");
      }
    } catch (_) {}
  }

  getPhoto() async {
    try {
      var response = await uriParse(urlPhotos);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<PhotosModel> listPhoto =
            jsonResponse.map((e) => PhotosModel.fromJsonMap(e)).toList();
        return listPhoto;
      } else {
        print("error");
      }
    } catch (_) {}
  }
}
