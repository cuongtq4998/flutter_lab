import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/appPages/Routes.dart';
import 'package:flutter_base/src/ui/Post/PostBinding.dart';

import 'package:flutter_base/src/ui/Post/PostPage.dart';
import 'package:flutter_base/src/ui/User/UserBinding.dart';
import 'package:flutter_base/src/ui/User/UserPage.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final Rx<int> tabIndex = 0.obs;
  final page = [Routes.Users, Routes.Posts];

  void changeIndex(int index) {
    tabIndex(index);
    Get.toNamed(page[index], id: 1);
  }

  Route onGenergateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.Users:
        return GetPageRoute(
            settings: setting, page: () => UserPage(), binding: UserBinding());
        break;
      case Routes.Posts:
        return GetPageRoute(
            settings: setting, page: () => PostPage(), binding: PostBinding());
        break;
      default:
        return null;
    }
  }
}
