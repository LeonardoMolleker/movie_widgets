import 'package:cached_network_image/cached_network_image.dart';
import 'poster_image_widget.dart';
import '../movie_constants/movie_constants.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';
import 'image_type.dart';

class MovieDetailImage extends StatelessWidget {
  final String imagePath;
  final String defaultPath;
  final String heroTag;

  const MovieDetailImage({
    Key? key,
    this.imagePath = MovieConstants.defaultPoster,
    this.defaultPath = MovieConstants.defaultPoster,
    this.heroTag = MovieConstants.heroMovieDetailTransitionTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        height: MovieDimensions.movieDetailContainerHeight,
        child: Center(
          child: CachedNetworkImage(
            placeholder: (context, url) => PosterImage(
              type: ImageType.initial,
            ),
            imageUrl: imagePath,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => PosterImage(
              type: ImageType.error,
            ),
          ),
        ),
      ),
    );
  }
}
