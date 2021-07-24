import 'dart:convert'; 

import 'package:flutter/material.dart';
import 'package:flutter_base/src/data/model/PostModel.dart';
import 'package:http/http.dart' as http;  

import '../../config/domain.dart';

 
class PostProvider {  
  // final http.Client httpClient;
  var urlpPost = Domain.urlPost;
  
  // PostProvider({@required this.httpClient} );
 
  getPost()  async {
    try { 
      var response = await http.get(Uri.parse(urlpPost),
        headers: {"Accept": "application/json"});

      if (response.statusCode == 200){
        Iterable jsonResponse = json.decode(response.body);
        List<PostModel> listPost = jsonResponse.map((model) => PostModel.fromJsonMap(model)).toList();
        return listPost; 
      } else{
        print("error");
      }
    }catch (_){ }
  }
}