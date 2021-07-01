import '../lib/src/movie_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'build_widget.dart';

void main() {
  testWidgets("Should display an overview of a movie", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailsOverview(
          overview: MovieConstants.defaultOverview,
        ),
      ),
    );
    expect(
      find.text(
        MovieConstants.defaultOverview,
      ),
      findsOneWidget,
    );
  });
}
