import '../movie_constants/movie_constants.dart';
import 'package:flutter/material.dart';

class DefaultImage extends StatelessWidget {
  const DefaultImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MovieConstants.defaultPoster,
    );
  }
}
