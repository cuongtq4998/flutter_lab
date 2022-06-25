import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter_base/src/Module/Getx/server/domain.dart';
import 'package:flutter_base/src/Module/Getx/model/PhotosModel.dart';

class PhotosPage extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

// setup state page
class _PhotosState extends State<PhotosPage> {
  List<PhotosModel> data;

  Future<String> getPhotos() async {
    var response = await http
        .get(Uri.parse(Domain.photos), headers: {"Accept": "application/json"});

    setState(() {
      List res = json.decode(response.body);
      data = res.map((e) => PhotosModel.fromJsonMap(e)).toList();
    });

    return "Success";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Photos Page"),
          ),
           body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(data == null ? 0 : data.length, (index) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image.network(data[index].thumbnailUrl),
            ),
          );
        }),
      ),
      ),
    );
  }
}
