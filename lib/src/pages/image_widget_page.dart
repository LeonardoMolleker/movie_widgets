import '../movie_constants/movie_constants.dart';
import '../movie_widgets/movie_detail_image.dart';
import '../constants/titles_constants.dart';
import 'package:flutter/material.dart';

class ImageWidgetPage extends StatelessWidget {
  const ImageWidgetPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TitlesConstants.imageWidgetTitle,
        ),
      ),
      body: Center(
        child: MovieDetailImage(
          imagePath: MovieConstants.uriPosterImage,
          heroTag: MovieConstants.heroMovieDetailTransitionTag,
        ),
      ),
    );
  }
}
