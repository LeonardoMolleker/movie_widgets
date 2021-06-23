import '../constants/tiles_constants.dart';
import '../movie_constants/movie_constants.dart';
import '../constants/measures_constants.dart';
import 'list_view_tile.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  final List<ListViewTile> tiles;

  const HomeListView({
    Key? key,
    this.tiles = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: MeasureConstants.listViewPaddingTop,
      ),
      child: ListView(
        children: buildListView(
          tiles,
        ),
      ),
    );
  }

  List<Widget> buildListView(List<ListViewTile> tiles) {
    List<Widget> listView = [];
    tiles.forEach((tile) {
      if (tile.title == TilesConstants.imageWidgetTitle) {
        listView.add(
          Hero(
            tag: MovieConstants.heroMovieDetailTransitionTag,
            child: tile,
          ),
        );
      } else {
        listView.add(
          tile,
        );
      }
      listView.add(
        Divider(
          thickness: MeasureConstants.dividerThickness,
          color: Colors.blue,
        ),
      );
    });
    return listView;
  }
}
