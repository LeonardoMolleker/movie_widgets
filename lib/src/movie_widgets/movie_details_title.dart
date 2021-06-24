import '../movie_constants/movie_constants.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsTitle extends StatelessWidget {
  final String title;

  const MovieDetailsTitle({
    Key? key,
    this.title = MovieConstants.defaultTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: MovieDimensions.movieDetailTitleTopBottomPadding,
        bottom: MovieDimensions.movieDetailTitleTopBottomPadding,
        left: MovieDimensions.movieDetailTitleLeftPadding,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: MovieDimensions.movieDetailTilteFontSize,
        ),
      ),
    );
  }
}
