import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter_base/src/Module/Getx/server/domain.dart';
import 'package:flutter_base/src/Module/Getx/model/PostModel.dart';

class PostPage extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<PostPage> {
  List<PostModel> _data;

  Future<String> getPost() async {
    var respones = await http.get(Uri.parse(Domain.postUrl),
        headers: {"Accept": "application/json"});

    setState(() {
      List res = json.decode(respones.body);
      _data = res.map((e) => PostModel.fromJsonMap(e)).toList();
    });

    return "Success";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Post Page"),
        ),
        body: ListView.builder(
          itemCount: _data == null ? 0 : _data.length,
          itemBuilder: (context, index) {
            final item = _data[index];
            return ListTile(
                title: Text(
                  item.title,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(item.body,
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ));
          }),
        )
        );
  }
}
