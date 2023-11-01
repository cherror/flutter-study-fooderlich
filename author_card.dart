import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {Key? key,
        required this.authorName,
        required this.title,
        required this.imageProvider})
      : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool iconClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleImage(imageProvider: widget.imageProvider),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: FooderlichTheme.lightTextTheme.displayMedium,
                ),
                Text(
                  widget.title,
                  style: FooderlichTheme.lightTextTheme.displaySmall,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(iconClicked?Icons.favorite:Icons.favorite_border),
          iconSize: 30,
          color: Colors.black,
          onPressed: () {
            iconClicked= !iconClicked;
            setState(() {
            });
            const snackBar = SnackBar(content: Text('favorite click'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //user에게 간단한 메시지 보여주고 사라지게 할 때 snackbar 유용
            print(iconClicked);
          },
        ),
      ],
    );
  }
}