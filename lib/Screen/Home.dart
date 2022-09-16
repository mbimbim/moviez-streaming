// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_streaming/Card/Card1.dart';
import 'package:movie_streaming/Card/Card2.dart';
import 'package:movie_streaming/Model/Json1.dart';
import 'package:movie_streaming/Model/Start.dart';
import 'package:movie_streaming/Screen/Search.dart';
import 'package:movie_streaming/Services/Json2.dart';
import 'package:movie_streaming/style/styleFont.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Datum> datum = Utils.getData();
  List<Datum> datum2 = Utils.getData2();

  int indexx = 0;
  double rating = 3.5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              //   color: Colors.yellow,
              margin: EdgeInsets.all(24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Moviez',
                          style: FontStyleUtils.style2,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Watch much easier',
                          style: FontStyleUtils.style4,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SearchView()),
                        );
                      },
                      child: Icon(
                        Icons.search,
                        size: 22,
                      ),
                    )
                  ]),
            ),
          )),
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: datum.length,
                itemBuilder: (context, index) {
                  return Card1(
                      img: datum[index].img,
                      judul: datum[index].judul,
                      genre: datum[index].genre,
                      rate: datum[index].rate);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'From Disney',
              style: FontStyleUtils.style2,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Column(
              children: datum2.map((e) {
                indexx++;

                return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Card2(
                      img: e.img,
                      judul: e.judul,
                      genre: e.genre,
                      rate: e.rate,
                    ));
              }).toList(),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
