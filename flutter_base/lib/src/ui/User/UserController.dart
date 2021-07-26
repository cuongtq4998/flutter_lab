import 'package:flutter/material.dart';
import 'package:flutter_base/src/data/model/User/UsersModel.dart';
import 'package:flutter_base/src/data/respository/GetXRespository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final GetXRespository respository;

  UserController({@required this.respository}) : assert(respository != null);

  final _userList = <UsersModel>[].obs;
  get userList => this._userList.value;
  set userList(value) => this._userList.value = value;

  getUserList() {
    respository.getUser().then((data) {
      this.userList = data;
    });
  }
}
