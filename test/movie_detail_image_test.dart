import 'package:cached_network_image/cached_network_image.dart';
import 'package:exported_movie_widgets/exported_movie_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'build_widget.dart';

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
