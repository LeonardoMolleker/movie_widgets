import '../movie_constants/movie_constants.dart';
import 'default_image_widget.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailImage extends StatelessWidget {
  final Widget image;
  final String heroTag;

  const MovieDetailImage({
    Key? key,
    this.image = const DefaultImage(),
    this.heroTag = MovieConstants.heroMovieDetailTransitionTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        height: MovieDimensions.movieDetailContainerHeight,
        child: Center(
          child: image,
        ),
      ),
    );
  }
}
