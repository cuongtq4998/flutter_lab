import 'package:flutter_base/src/data/provider/GetXProvider.dart';
import 'package:flutter_base/src/data/respository/GetXRespository.dart';
import 'package:flutter_base/src/ui/Post/PostController.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class PostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostController>(() {
      return PostController(
          repository: GetXRespository(apiPostClient: GetXProvider()));
    });
  }
}
