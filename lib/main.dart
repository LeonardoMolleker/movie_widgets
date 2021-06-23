import 'pages/center_widget_page.dart';
import 'constants/pages_strings.dart';
import 'movie_widgets/movie_details_info.dart';
import 'movie_widgets/movie_details_overview.dart';
import 'movie_widgets/movie_details_title.dart';
import 'pages/play_button_page.dart';
import 'constants/routes_constants.dart';
import 'pages/actions_page.dart';
import 'pages/image_widget_page.dart';
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
        RoutesConstants.playButtonWidgetRoute: (context) => PlayButtonPage(),
        RoutesConstants.actionsWidgetRoute: (context) => ActionsPage(),
        RoutesConstants.infoWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsInfo(
                language: PagesStrings.defaultLanguage,
                date: DateTime.now().year.toString(),
                rating: PagesStrings.defaultRating,
              ),
            ),
        RoutesConstants.overviewWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsOverview(
                overview: PagesStrings.overviewOfOverviewPage,
              ),
            ),
        RoutesConstants.titleWidgetRoute: (context) => CenterWidgetPage(
              movieWidget: MovieDetailsTitle(
                title: PagesStrings.titleOfTitleWidget,
              ),
            ),
      },
    );
  }
}
