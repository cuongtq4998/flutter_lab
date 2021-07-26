import 'package:flutter_base/src/data/provider/GetXProvider.dart';
import 'package:flutter_base/src/data/respository/GetXRespository.dart';
import 'package:flutter_base/src/ui/Home/HomeController.dart';
import 'package:flutter_base/src/ui/Post/PostController.dart';
import 'package:flutter_base/src/ui/User/UserController.dart';
import 'package:get/instance_manager.dart';

class HomeBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
