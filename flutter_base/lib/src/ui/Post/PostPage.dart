import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_base/src/ui/Post/PostControllet.dart';

class PostPage extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    var title = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title.titlePostPage),
      ),
      body: SafeArea(
          child: Container(
        child: GetX<PostController>(initState: (state) {
          Get.find<PostController>().getPost();
        }, builder: (_) {
          return _.postList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _.postList[index].title,
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(_.postList[index].body,
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                    );
                  },
                  itemCount: _.postList.length,
                );
        }),
      )),
    );
  }
}
