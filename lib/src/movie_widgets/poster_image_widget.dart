import 'package:flutter/material.dart';
import '../movie_widgets.dart';
import 'image_type.dart';

class PosterImage extends StatelessWidget {
  final ImageType type;

  const PosterImage({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      type == ImageType.initial
          ? MovieConstants.defaultPoster
          : MovieConstants.errorPoster,
      fit: BoxFit.cover,
    );
  }
}
