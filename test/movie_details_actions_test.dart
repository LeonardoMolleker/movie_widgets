
import 'package:exported_movie_widgets/exported_movie_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'build_widget.dart';
import '../lib/src/constants/measures_constants.dart';

void main() {
  testWidgets("Should display icons of actions", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailsActions(),
      ),
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
      findsNWidgets(
        MeasureConstants.defaultIcons,
      ),
    );
    expect(
      find.descendant(
        of: find.byType(
          Row,
        ),
        matching: find.byIcon(
          Icons.share_outlined,
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(
          Row,
        ),
        matching: find.byIcon(
          Icons.favorite_border,
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(
          Row,
        ),
        matching: find.byIcon(
          Icons.add,
        ),
      ),
      findsOneWidget,
    );
  });
}
