import 'package:flutter/material.dart';

class ListViewTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String routeName;
  final Icon icon;

  const ListViewTile({
    Key key,
    this.title,
    this.subtitle,
    this.routeName,
    this.icon,
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
