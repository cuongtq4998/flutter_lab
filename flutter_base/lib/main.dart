import 'package:flutter/material.dart';
import 'package:flutter_base/src/ui/Post/PostBinding.dart';
import 'package:flutter_base/src/ui/Post/PostPage.dart'; 
import 'package:get/get.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_base/src/appPages/AppPages.dart';
import 'package:flutter_base/src/routes/Routes.dart';
import 'package:flutter_base/src/ui/Home/HomePage.dart'; 
 
void main() => runApp(
  GetMaterialApp(
   debugShowCheckedModeBanner: false,
   initialRoute: Routes.Initial,
   initialBinding: PostBinding(),
   getPages: AppPages.routes,
   home: PostPage(), 
   onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context).appTitle;
      },
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    theme: ThemeData(primarySwatch: Colors.orange),
  )
);
 
