import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/ui/PhotosPage.dart';
import 'package:flutter_base/src/ui/Post/PostPage.dart';
import 'package:flutter_base/src/ui/User/UserPage.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  var tabIndex = 0;
  final pageOption = [UserPage(), PhotosPage()]; 

  void changeIndex(int index) {
    tabIndex = index;
    update();
  }

  getChild() async {
    return pageOption;
  }

  bottomNavigationBarItem({IconData icon, String label}) async {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

   
}
