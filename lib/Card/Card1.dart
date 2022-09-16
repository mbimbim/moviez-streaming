import 'package:flutter/material.dart';
import 'package:movie_streaming/style/styleFont.dart';

import '../Model/Start.dart';

class Card1 extends StatefulWidget {
  String img = "";
  String judul = "";
  String genre = "";
  double rate = 0.0;
  Card1(
      {Key? key,
      required this.img,
      required this.judul,
      required this.genre,
      required this.rate})
      : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              widget.img,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 19,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                )
              ],
            ),
            StarRating(
              rating: widget.rate,
              onRatingChanged: (rating) => setState(() => widget.rate = rating),
              color: Colors.amber,
            )
          ],
        )
      ]),
    );
  }
}
