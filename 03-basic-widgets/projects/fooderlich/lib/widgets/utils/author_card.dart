import 'package:flutter/material.dart';
import 'package:fooderlich/theming/fooderlich_theme.dart';

import 'circle_image.dart';


class AuthorCard extends StatefulWidget {
  // 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  //adding some state here
  bool is_Favorited = false;
  // 2
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1
          Row(children: [
            CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
            ),
            // 2
            const SizedBox(width: 8),
            // 3
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: FooderLichTheme.lightTextTheme.headline2,
                ),
                Text(
                  widget.title,
                  style: FooderLichTheme.lightTextTheme.headline3,
                )
              ],
            ),
          ]),
          // TODO 2: add IconButton
          IconButton(
            // 4
            icon: Icon(is_Favorited ? Icons.favorite : Icons.favorite_border),

            iconSize: 30,
            color: Colors.green,
            // 5
            onPressed: () {
              //call state if favorite pressed
              setState((){
                is_Favorited = !is_Favorited;
              });
            },
          ),
        ],
      ),
    );
  }
}