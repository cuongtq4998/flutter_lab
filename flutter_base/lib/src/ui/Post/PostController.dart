import 'package:flutter_base/src/data/respository/GetXRespository.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter_base/src/data/model/PostModel.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PostController extends GetxController {
  //repository required
  final GetXRespository repository;

  PostController({@required this.repository}) : assert(repository != null);

  final _postsList = <PostModel>[].obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  getPost() {
    repository.getPostRes().then((data) {
      this.postList = data;
    });
  }
}
