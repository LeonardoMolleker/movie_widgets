import 'package:exported_movie_widgets/src/classes/route_element.dart';
import '../../exported_movie_widgets.dart';
import '../constants/titles_constants.dart';
import '../constants/measures_constants.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatefulWidget {
  const HomeListView({
    Key? key,
  }) : super(key: key);

  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  late List<RouteElement> _listRoute;

  @override
  void initState() {
    super.initState();
    _generateRouteList();
  }

  void _generateRouteList() {
    _listRoute = [];
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.image,
        ),
        title: TitlesConstants.imageWidgetTitle,
        subtitle: TitlesConstants.imageWidgetSubtitle,
        route: RoutesConstants.imageWidgetRoute,
      ),
    );
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.play_arrow,
        ),
        title: TitlesConstants.playButtonWidgetTitle,
        subtitle: TitlesConstants.playButtonWidgetSubtitle,
        route: RoutesConstants.playButtonWidgetRoute,
      ),
    );
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.favorite_border,
        ),
        title: TitlesConstants.actionsWidgetTitle,
        subtitle: TitlesConstants.actionsWidgetSubtitle,
        route: RoutesConstants.actionsWidgetRoute,
      ),
    );
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.info_outline,
        ),
        title: TitlesConstants.infoWidgetTitle,
        subtitle: TitlesConstants.infoWidgetSubtitle,
        route: RoutesConstants.infoWidgetRoute,
      ),
    );
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.description,
        ),
        title: TitlesConstants.overviewWidgetTitle,
        subtitle: TitlesConstants.overviewWidgetSubtitle,
        route: RoutesConstants.overviewWidgetRoute,
      ),
    );
    _listRoute.add(
      RouteElement(
        icon: Icon(
          Icons.title,
        ),
        title: TitlesConstants.titleWidgetTitle,
        subtitle: TitlesConstants.titleWidgetSubtitle,
        route: RoutesConstants.titleWidgetRoute,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: MeasureConstants.listViewPaddingTop,
      ),
      child: ListView.builder(
        itemCount: _listRoute.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: _listRoute[index].icon,
            title: Text(
              _listRoute[index].title,
            ),
            subtitle: Text(
              _listRoute[index].subtitle,
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                _listRoute[index].route,
              );
            },
          );
        },
      ),
    );
  }
}
