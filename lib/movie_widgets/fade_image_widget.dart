import '../movie_constants/movie_constants.dart';
import 'package:flutter/material.dart';

class FadeImageWidget extends StatelessWidget {
  final String posterPath;
  final String defaultPath;

  const FadeImageWidget({
    Key key,
    this.posterPath,
    this.defaultPath = MovieConstants.defaultPoster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: defaultPath,
      image: posterPath != null
          ? posterPath
          : defaultPath,
      fit: BoxFit.cover,
    );
  }
}
