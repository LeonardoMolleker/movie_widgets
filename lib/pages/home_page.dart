import '../constants/pages_strings.dart';
import '../constants/routes_constants.dart';
import '../constants/tiles_constants.dart';
import '../widgets/list_view_tile.dart';
import '../widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<ListViewTile> tiles = [
    ListViewTile(
      icon: Icon(
        Icons.image,
      ),
      title: TilesConstants.imageWidgetTitle,
      subtitle: TilesConstants.imageWidgetSubtitle,
      routeName: RoutesConstants.imageWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.play_arrow,
      ),
      title: TilesConstants.playButtonWidgetTitle,
      subtitle: TilesConstants.playButtonWidgetSubtitle,
      routeName: RoutesConstants.playButtonWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.favorite_border,
      ),
      title: TilesConstants.actionsWidgetTitle,
      subtitle: TilesConstants.actionsWidgetSubtitle,
      routeName: RoutesConstants.actionsWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.info_outline,
      ),
      title: TilesConstants.infoWidgetTitle,
      subtitle: TilesConstants.infoWidgetSubtitle,
      routeName: RoutesConstants.infoWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.description,
      ),
      title: TilesConstants.overviewWidgetTitle,
      subtitle: TilesConstants.overviewWidgetSubtitle,
      routeName: RoutesConstants.overviewWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.title,
      ),
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
