import '../movie_constants/movie_constants.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsInfo extends StatelessWidget {
  final String language;
  final String date;
  final String rating;
  final double fontSize;

  const MovieDetailsInfo({
    Key? key,
    this.language = MovieConstants.defaultLanguage,
    this.date = MovieConstants.defaultDate,
    this.rating = MovieConstants.defaultRating,
    this.fontSize = MovieDimensions.movieDetailInfoFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: MovieDimensions.movieDetailInfoBottomPadding,
      ),
      child: Text(
        MovieConstants.movieDetailLanguage +
            language +
            MovieConstants.movieDetailDate +
            date +
            MovieConstants.movieDetailRating +
            rating,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          wordSpacing: MovieDimensions.movieDetailInfoWordSpacing,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
