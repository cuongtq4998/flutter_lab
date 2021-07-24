import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '..//Dashboard/DashboardController.dart';
import '../Home/HomePage.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = AppLocalizations.of(context);
    final DashboardController controller = Get.put(DashboardController());

    return Scaffold(
        appBar: AppBar(title: Obx(() => Text("Click: ${controller.count}"))),
        body: Center(
            child: ElevatedButton(
                child: Text(title.appTitle),
                onPressed: () => Get.to(HomePage()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: controller.increment));
  }
}
