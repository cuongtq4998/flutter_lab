import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './UserController.dart';

class UserPage extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    var title = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title.titleUserPage),
      ),
      body: SafeArea(
        child: Container(
          child: GetX<UserController>(
            initState: (state) {
              Get.find<UserController>().getUserList();
            },
            builder: (item) {
              return item.userList.length < 1
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: item.userList.length,
                      itemBuilder: (context, index) {
                        final items = item.userList[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.cyan,
                          ),
                          title: Text(items.name),
                          subtitle: Text(items.username),
                          isThreeLine: true,
                          trailing: Text(items.website),
                        );
                      });
            },
          ),
        ),
      ),
    );
  }
}
