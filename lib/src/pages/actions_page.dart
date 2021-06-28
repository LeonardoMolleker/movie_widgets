import '../constants/pages_strings.dart';
import '../movie_widgets/movie_details_actions.dart';
import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitleActionsPage,
        ),
      ),
      body: Center(
        child: MovieDetailsActions(),
      ),
    );
  }
}
