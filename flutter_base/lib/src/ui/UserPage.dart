import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter_base/src/server/domain.dart';
import 'package:flutter_base/src/model/User/UsersModel.dart';

class UserPage extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<UserPage> {
   List<UsersModel> _data;

  Future<String> getUsers() async {
    var response =
        await http.get(Uri.parse(Domain.userUrl), headers: {"Accept": "application/json"});

    setState(() {
      List res = json.decode(response.body);
      _data = res.map((data) => UsersModel.fromJsonMap(data)).toList();
    });
    return "success";
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('USERS'),
        ),
        body: ListView.builder(
            itemCount: _data == null ? 0 : _data.length,
            itemBuilder: (context, index) {
              final item = _data[index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                ),
                title: Text(item.name),
                subtitle: Text(item.username),
                isThreeLine: true,
                trailing: Text(item.website),
              );
            }));
  }
}