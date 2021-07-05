import '../lib/src/movie_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/src/movie_constants/movie_constants.dart';
import 'build_widget.dart';

void main() {
  testWidgets("Should display the title of a movie", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailsTitle(
          title: MovieConstants.defaultTitle,
        ),
      ),
    );
    expect(
      find.text(
        MovieConstants.defaultTitle,
      ),
      findsOneWidget,
    );
  });
}
