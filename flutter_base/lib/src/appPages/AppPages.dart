

import 'package:flutter_base/main.dart';
import 'package:flutter_base/src/routes/Routes.dart';
import 'package:flutter_base/src/ui/Home/HomePage.dart';
import 'package:flutter_base/src/ui/Post/PostBinding.dart';
import 'package:flutter_base/src/ui/Post/PostPage.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.Initial, page: () => HomePage()),
    GetPage(name: Routes.Posts, page: () => PostPage(), binding: PostBinding())
  ];
}