import '../constants/pages_strings.dart';
import 'package:flutter/material.dart';

class CenterWidgetPage extends StatelessWidget {
  final Widget movieWidget;
  final String appBarTitle;

  const CenterWidgetPage({
    Key? key,
    this.movieWidget = const Text(
      PagesStrings.defaultMovieWidgetText,
    ),
    this.appBarTitle = PagesStrings.defaultAppBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          appBarTitle,
        ),
      ),
      body: Center(
        child: movieWidget,
      ),
    );
  }
}
