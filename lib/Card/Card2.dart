import 'package:flutter/material.dart';
import 'package:movie_streaming/style/styleFont.dart';

import '../Model/Start.dart';

class Card2 extends StatefulWidget {
  String img = "";
  String judul = "";
  String genre = "";
  double rate = 0.0;
  Card2(
      {Key? key,
      required this.img,
      required this.judul,
      required this.genre,
      required this.rate})
      : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(21),
          child: Image.asset(
            widget.img,
            width: 100,
            height: 127,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.judul,
              style: FontStyleUtils.style3,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              widget.genre,
              style: FontStyleUtils.style4,
            ),
            SizedBox(
              height: 20,
            ),
            StarRating(
              rating: widget.rate,
              onRatingChanged: (rating) => setState(() => widget.rate = rating),
              color: Colors.amber,
            )
          ],
        )
      ],
    ));
  }
}
