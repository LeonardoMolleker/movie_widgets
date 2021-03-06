import '../movie_constants/movie_constants.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsOverview extends StatelessWidget {
  final String overview;
  final double fontSize;

  const MovieDetailsOverview({
    Key? key,
    this.overview = MovieConstants.defaultOverview,
    this.fontSize = MovieDimensions.movieDetailOverviewFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        MovieDimensions.movieDetailOverviewLeftRightBottomPadding,
        MovieDimensions.movieDetailOverviewTopPadding,
        MovieDimensions.movieDetailOverviewLeftRightBottomPadding,
        MovieDimensions.movieDetailOverviewLeftRightBottomPadding,
      ),
      child: Text(
        overview,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
