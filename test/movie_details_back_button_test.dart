import '../lib/src/movie_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'build_widget.dart';
import '../lib/src/movie_constants/movie_constants.dart';

void main() {
  testWidgets("Should display a button to go back", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailBackButton(),
      ),
    );
    expect(
      find.descendant(
        of: find.byType(
          ElevatedButton,
        ),
        matching: find.byType(
          Row,
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(
          Row,
        ),
        matching: find.byType(
          Icon,
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(
          Row,
        ),
        matching: find.text(
          MovieConstants.backButtonText,
        ),
      ),
      findsOneWidget,
    );
  });
}
