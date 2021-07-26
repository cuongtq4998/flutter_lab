import 'package:flutter/material.dart';
import 'package:flutter_base/src/data/provider/GetXProvider.dart';

class GetXRespository {
  final GetXProvider apiPostClient;
  GetXRespository({@required this.apiPostClient})
      : assert(apiPostClient != null);

  getPostRes() {
    return apiPostClient.getPost();
  }

  getUser() {
    return apiPostClient.getUser();
  }

  getPhoto() {
    return apiPostClient.getPhoto();
  }
}
