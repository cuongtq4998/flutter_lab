import 'package:flutter_base/src/ui/Home/HomeController.dart'; 
import 'package:get/instance_manager.dart';

class HomeBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
