import '../constants/pages_strings.dart';
import '../movie_widgets/movie_details_overview.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitleOverviewPage,
        ),
      ),
      body: Center(
        child: MovieDetailsOverview(
          overview: PagesStrings.overviewOfOverviewPage,
        ),
      ),
    );
  }
}
