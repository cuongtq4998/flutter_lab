import 'package:flutter_base/src/ui/Login/LoginController.dart';
import 'package:get/instance_manager.dart';

class LoginBindding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }

}