import 'package:exported_movie_widgets/exported_movie_widgets.dart';
import 'package:flutter/cupertino.dart';

import '../movie_constants/movie_dimensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsActions extends StatefulWidget {
  final double spacerSize;

  MovieDetailsActions({
    Key? key,
    this.spacerSize = MovieDimensions.movieDetailSixedBoxWidth,
  }) : super(key: key);

  @override
  _MovieDetailsActionsState createState() => _MovieDetailsActionsState();
}

class _MovieDetailsActionsState extends State<MovieDetailsActions> {
  late List<Icon> icons;
  final snackBar = SnackBar(
    content: Text(
      PagesStrings.snackBarText,
    ),
  );

  @override
  void initState() {
    super.initState();
    icons = [
      Icon(
        Icons.share_outlined,
        color: Colors.grey,
      ),
      Icon(
        Icons.favorite_outlined,
        color: Colors.grey,
      ),
      Icon(
        Icons.add,
        color: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MovieDimensions.detailButtonsHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.black,
              ),
            ),
            icon: icons[index],
            label: Text(
              "",
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: widget.spacerSize,
          );
        },
      ),
    );
  }
}
