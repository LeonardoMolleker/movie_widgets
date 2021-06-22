import '../constants/pages_strings.dart';
import '../movie_widgets/movie_details_info.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitleInfoPage,
        ),
      ),
      body: Center(
        child: MovieDetailsInfo(
          language: PagesStrings.defaultLanguage,
          date: DateTime.now().year.toString(),
          rating: PagesStrings.defaultRating,
        ),
      ),
    );
  }
}
