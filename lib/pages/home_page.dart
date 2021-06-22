import 'package:exported_movie_widgets/constants/pages_strings.dart';

import '../constants/routes_constants.dart';
import '../constants/tiles_constants.dart';
import '../widgets/list_view_tile.dart';
import '../widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<ListViewTile> tiles = [
    ListViewTile(
      title: TilesConstants.imageWidgetTitle,
      subtitle: TilesConstants.imageWidgetSubtitle,
      routeName: RoutesConstants.imageWidgetRoute,
    ),
    ListViewTile(
      title: TilesConstants.playButtonWidgetTitle,
      subtitle: TilesConstants.playButtonWidgetSubtitle,
      routeName: RoutesConstants.playButtonWidgetRoute,
    ),
    ListViewTile(
      title: TilesConstants.actionsWidgetTitle,
      subtitle: TilesConstants.actionsWidgetSubtitle,
      routeName: RoutesConstants.actionsWidgetRoute,
    ),
    ListViewTile(
      title: TilesConstants.infoWidgetTitle,
      subtitle: TilesConstants.infoWidgetSubtitle,
      routeName: RoutesConstants.infoWidgetRoute,
    ),
    ListViewTile(
      title: TilesConstants.overviewWidgetTitle,
      subtitle: TilesConstants.overviewWidgetSubtitle,
      routeName: RoutesConstants.overviewWidgetRoute,
    ),
    ListViewTile(
      title: TilesConstants.titleWidgetTitle,
      subtitle: TilesConstants.titleWidgetSubtitle,
      routeName: RoutesConstants.titleWidgetRoute,
    )
  ];

  Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PagesStrings.appBarTitleHome,
        ),
      ),
      body: HomeListView(
        tiles: tiles,
      ),
    );
  }
}
