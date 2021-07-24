
import 'package:flutter/material.dart';
import 'package:flutter_base/src/data/provider/PostProvider.dart';

class PostRespository {
  final PostProvider apiPostClient;
  PostRespository({@required this.apiPostClient}) : assert(apiPostClient != null);

  getPostRes() {
     return apiPostClient.getPost(); 
  }
}