import '../constants/pages_strings.dart';
import '../widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
      body: HomeListView(),
    );
  }
}
