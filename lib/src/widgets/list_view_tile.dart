import '../constants/titles_constants.dart';
import 'package:flutter/material.dart';

class ListViewTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String routeName;
  final Icon icon;

  const ListViewTile({
    Key? key,
    this.title = TitlesConstants.defaultTileTitle,
    this.subtitle = TitlesConstants.defaultTileSubtitle,
    this.routeName = TitlesConstants.defaultTileRouteName,
    this.icon = const Icon(
      Icons.error,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
      ),
      subtitle: Text(
        subtitle,
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          routeName,
        );
      },
    );
  }
}
