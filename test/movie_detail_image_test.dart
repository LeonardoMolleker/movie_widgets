import 'package:cached_network_image/cached_network_image.dart';
import '../lib/src/movie_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../tmdb_movies/test/build_widget.dart';

void main() {
  testWidgets("Should display an image of the movie", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailImage(),
      ),
    );
    expect(
      find.descendant(
        of: find.byType(
          Hero,
        ),
        matching: find.byType(
          CachedNetworkImage,
        ),
      ),
      findsOneWidget,
    );
  });
}
