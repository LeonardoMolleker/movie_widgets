import '../constants/pages_strings.dart';
import '../movie_widgets/movie_details_title.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitleOfTitlePage,
        ),
      ),
      body: Center(
        child: MovieDetailsTitle(
          title: PagesStrings.titleOfTitleWidget,
        ),
      ),
    );
  }
}
