import '../movie_widgets/movie_detail_back_button.dart';
import '../constants/pages_strings.dart';
import 'package:flutter/material.dart';

class PlayButtonPage extends StatelessWidget {
  const PlayButtonPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitlePlayButtonPage,
        ),
      ),
      body: Center(
        child: MovieDetailBackButton(),
      ),
    );
  }
}
