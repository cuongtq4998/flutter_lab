import 'package:flutter/material.dart';
import 'package:flutter_base/src/ui/Dashboard/DashboardView.dart';
import 'package:flutter_base/widget/hello_cart.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(GetMaterialApp(home: GoToDashboard()));

//init App localizations
class GoToDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context).appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardView(),
    );
  }
}

//------------------------------------ example ----------------------//
class HeroList extends StatelessWidget {
  final String title;

  HeroList({this.title = ''});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: "t.openSettings",
            // onPressed: () => Navigator.pushNamed(context, '/settings'),
            // onPressed: () => Get.to(Settings()),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("t.heroCount(6)"),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  HeroCard(
                    name: 't.hopperName',
                    born: '9 December 1906',
                    bio: 't.hopperBio',
                    imagePath: 'assets/images/grace_hopper.jpg',
                  ),
                  HeroCard(
                    name: 't.turingName',
                    born: '23 June 1912',
                    bio: 't.turingBio',
                    imagePath: 'assets/images/alan_turing.jpg',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
