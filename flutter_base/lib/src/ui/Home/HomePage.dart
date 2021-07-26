import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_base/src/appPages/Routes.dart';
import 'package:flutter_base/src/ui/Home/HomeController.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var title = AppLocalizations.of(context);

    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.Users,
        onGenerateRoute: controller.onGenergateRoute,
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'user'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.read_more), label: 'post')
            ],
            currentIndex: controller.tabIndex.value,
            selectedItemColor: Colors.red,
            onTap: controller.changeIndex,
          )),
    );
  }
} 
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var title = AppLocalizations.of(context);
//     return GetBuilder<HomeController>(builder: (controller) {
//       return Scaffold(
//         body: SafeArea(
//           child: IndexedStack(
//             index: controller.tabIndex,
//             children: controller.getChild(),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           unselectedItemColor: Colors.grey,
//           selectedItemColor: Colors.red,
//           onTap: controller.changeIndex,
//           currentIndex: controller.tabIndex,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.green,
//           elevation: 0,
//           items: [
//             controller.bottomNavigationBarItem(
//               icon: CupertinoIcons.home,
//               label: title.bottomNaviUser,
//             ),
//             controller.bottomNavigationBarItem(
//               icon: CupertinoIcons.sportscourt,
//               label: title.bottomNaviPhotos,
//             ),
//             // controller.bottomNavigationBarItem(
//             //   icon: CupertinoIcons.bell,
//             //   label: title.bottomNaviPost,
//             // ),
//           ],
//         ),
//       );
//     });
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// //select default page
//   int _selectedPage = 0;
//   final pageOption = [UserPage(), PhotosPage(), Get.toNamed(Routes.Posts)];

//   var v1 = BottomNavigationBarItem(
//       icon: Icon(Icons.favorite, color: Colors.pink, size: 24.0),
//       label: 'USERS');

//   var v2 = BottomNavigationBarItem(
//       icon: Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
//       label: 'PHOTOS');

//   var v3 = BottomNavigationBarItem(
//       icon: Icon(
//         Icons.beach_access,
//         color: Colors.blue,
//         size: 36.0,
//       ),
//       label: 'POSTS');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pageOption[_selectedPage],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedPage,
//         // event on tap -> set _selectedPage
//         onTap: (int tap) {
//           setState(() {
//             _selectedPage = tap;
//           });
//         },
//         elevation: 2,
//         items: <BottomNavigationBarItem>[v1, v2, v3],
//       ),
//     );
//   }
// }
