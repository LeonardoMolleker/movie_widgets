import 'package:exported_movie_widgets/exported_movie_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'build_widget.dart';

void main() {
  testWidgets("Should display info of a movie", (tester) async {
    await tester.pumpWidget(
      buildWidget(
        MovieDetailsInfo(),
      ),
    );
    expect(
      find.text(
        MovieConstants.movieDetailLanguage +
            MovieConstants.defaultLanguage +
            MovieConstants.movieDetailDate +
            MovieConstants.defaultDate +
            MovieConstants.movieDetailRating +
            MovieConstants.defaultRating,
      ),
      findsOneWidget,
    );
  });
}
