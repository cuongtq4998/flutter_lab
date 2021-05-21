import 'package:flutter/material.dart';
import 'package:flutter_base/src/ui/HomePage.dart';

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "APP",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.orange),
        home: HomePage());
  }
}
