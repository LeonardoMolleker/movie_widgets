import 'package:exported_movie_widgets/exports/movie_widgets.dart';

import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailImage extends StatelessWidget {
  final String imagePath;
  final String defaultPath;
  final String heroTag;

  const MovieDetailImage({
    Key key,
    this.imagePath,
    this.defaultPath = MovieConstants.defaultPoster,
    this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        height: MovieDimensions.movieDetailContainerHeight,
        child: Center(
          child: FadeInImage.assetNetwork(
            placeholder: defaultPath,
            image: imagePath != null ? imagePath : defaultPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
