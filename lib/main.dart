import 'pages/play_button_page.dart';
import 'constants/routes_constants.dart';
import 'pages/actions_page.dart';
import 'pages/image_widget_page.dart';
import 'pages/info_page.dart';
import 'pages/overview_page.dart';
import 'pages/title_page.dart';
import 'pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesConstants.initialRoute,
      routes: {
        RoutesConstants.initialRoute: (context) => Home(),
        RoutesConstants.imageWidgetRoute: (context) => ImageWidgetPage(),
        RoutesConstants.playButtonWidgetRoute: (context) =>
            PlayButtonPage(),
        RoutesConstants.actionsWidgetRoute: (context) => ActionsPage(),
        RoutesConstants.infoWidgetRoute: (context) => InfoPage(),
        RoutesConstants.overviewWidgetRoute: (context) => OverviewPage(),
        RoutesConstants.titleWidgetRoute: (context) => TitlePage(),
      },
    );
  }
}
