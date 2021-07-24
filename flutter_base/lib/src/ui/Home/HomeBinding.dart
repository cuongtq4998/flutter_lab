

import 'package:flutter_base/src/ui/PhotosPage.dart';
import 'package:flutter_base/src/ui/Post/PostPage.dart';
import 'package:flutter_base/src/ui/User/UserPage.dart';
import 'package:get/instance_manager.dart';

class HomeBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserPage());
    Get.lazyPut(() => PostPage());
    Get.lazyPut(() => PhotosPage());
  } 
}