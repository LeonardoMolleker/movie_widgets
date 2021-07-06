import 'package:exported_movie_widgets/exported_movie_widgets.dart';
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
        RoutesConstants.playButtonWidgetRoute: (context) => PlayButtonPage(),
        RoutesConstants.actionsWidgetRoute: (context) => ActionsPage(),
        RoutesConstants.infoWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsInfo(),
              appBarTitle: PagesStrings.appBarTitleInfoPage,
            ),
        RoutesConstants.overviewWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsOverview(
                overview: PagesStrings.overviewOfOverviewPage,
              ),
              appBarTitle: PagesStrings.appBarTitleOverviewPage,
            ),
        RoutesConstants.titleWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsTitle(
                title: PagesStrings.titleOfTitleWidget,
              ),
              appBarTitle: PagesStrings.appBarTitleOfTitlePage,
            ),
      },
    );
  }
}
