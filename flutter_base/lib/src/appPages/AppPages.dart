import 'package:flutter_base/src/appPages/Routes.dart';
import 'package:flutter_base/src/ui/Home/HomeBinding.dart';
import 'package:flutter_base/src/ui/Home/HomePage.dart';
import 'package:flutter_base/src/ui/Photos/PhotosPage.dart';
import 'package:flutter_base/src/ui/Post/PostBinding.dart';
import 'package:flutter_base/src/ui/Post/PostPage.dart';
import 'package:flutter_base/src/ui/User/UserBinding.dart';
import 'package:flutter_base/src/ui/User/UserPage.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.Initial, page: () => HomePage()),
    GetPage(name: Routes.Home, page: () => HomePage(), binding: HomeBiding()),
    GetPage(name: Routes.Posts, page: () => PostPage(), binding: PostBinding()),
    GetPage(name: Routes.Users, page: () => UserPage(), binding: UserBinding()),
    GetPage(name: Routes.Photos, page: () => PhotosPage())
  ];
}
