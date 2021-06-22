import '../movie_constants/movie_constants.dart';
import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailPlayButton extends StatelessWidget {
  const MovieDetailPlayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: MovieDimensions.playButtonHorizontalPadding,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (
              states,
            ) =>
                Colors.white,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            Text(
              MovieConstants.playButtonText,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
