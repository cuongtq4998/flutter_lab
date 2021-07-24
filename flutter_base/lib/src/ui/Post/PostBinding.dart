

import 'package:flutter_base/src/data/provider/PostProvider.dart';
import 'package:flutter_base/src/data/respository/PostRespository.dart';
import 'package:flutter_base/src/ui/Post/PostControllet.dart';
import 'package:get/instance_manager.dart'; 
import 'package:get/get.dart';

class PostBinding implements Bindings { 
  @override
  void dependencies() {
    Get.lazyPut<PostController>(() {
      return PostController(
          repository:
              PostRespository(apiPostClient: PostProvider()));
    }); 
  } 
}