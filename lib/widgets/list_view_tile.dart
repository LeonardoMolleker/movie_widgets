import 'package:flutter/material.dart';

class ListViewTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String routeName;

  const ListViewTile({
    Key key,
    this.title,
    this.subtitle,
    this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
