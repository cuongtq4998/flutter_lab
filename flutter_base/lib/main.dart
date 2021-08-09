import 'package:flutter/material.dart';
import 'package:flutter_base/src/ui/Home/HomeBinding.dart';
import 'package:flutter_base/src/ui/Home/HomePage.dart';
import 'package:flutter_base/src/ui/Login/LoginBinding.dart';
import 'package:flutter_base/src/ui/Login/LoginPage.dart';
import 'package:flutter_base/src/ui/User/UserBinding.dart';
import 'package:flutter_base/src/ui/User/UserPage.dart'; 
import 'package:get/get.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_base/src/appPages/AppPages.dart';
import 'package:flutter_base/src/appPages/Routes.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.Users,
      initialBinding: LoginBindding(),
      getPages: AppPages.routes,
      home: LoginPage(),
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context).appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(primarySwatch: Colors.orange),
    ));
