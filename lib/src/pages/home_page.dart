import '../constants/pages_strings.dart';
import '../constants/routes_constants.dart';
import '../constants/titles_constants.dart';
import '../widgets/list_view_tile.dart';
import '../widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<ListViewTile> tiles = [
    ListViewTile(
      icon: Icon(
        Icons.image,
      ),
      title: TitlesConstants.imageWidgetTitle,
      subtitle: TitlesConstants.imageWidgetSubtitle,
      routeName: RoutesConstants.imageWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.play_arrow,
      ),
      title: TitlesConstants.playButtonWidgetTitle,
      subtitle: TitlesConstants.playButtonWidgetSubtitle,
      routeName: RoutesConstants.playButtonWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.favorite_border,
      ),
      title: TitlesConstants.actionsWidgetTitle,
      subtitle: TitlesConstants.actionsWidgetSubtitle,
      routeName: RoutesConstants.actionsWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.info_outline,
      ),
      title: TitlesConstants.infoWidgetTitle,
      subtitle: TitlesConstants.infoWidgetSubtitle,
      routeName: RoutesConstants.infoWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.description,
      ),
      title: TitlesConstants.overviewWidgetTitle,
      subtitle: TitlesConstants.overviewWidgetSubtitle,
      routeName: RoutesConstants.overviewWidgetRoute,
    ),
    ListViewTile(
      icon: Icon(
        Icons.title,
      ),
      title: TitlesConstants.titleWidgetTitle,
      subtitle: TitlesConstants.titleWidgetSubtitle,
      routeName: RoutesConstants.titleWidgetRoute,
    )
  ];

  Home({
    Key? key,
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
