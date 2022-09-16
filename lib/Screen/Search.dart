import 'package:flutter/material.dart';
import 'package:movie_streaming/Card/Card2.dart';
import 'package:movie_streaming/Model/Json1.dart';
import 'package:movie_streaming/Services/Json2.dart';
import 'package:movie_streaming/style/styleFont.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  final nameController = TextEditingController();

  List<Datum> datum2 = Utils.getData3();

  int indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        toolbarHeight: 100,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          //   color: Colors.yellow,

          decoration: BoxDecoration(
              // border: Border.all(width: 2, color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(100)),
          margin: const EdgeInsets.all(24),
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.search, size: 22),
              iconColor: Colors.black,
              fillColor: Colors.black,
              focusColor: Colors.black,
              labelText: 'Search Film',
            ),
          ),
        )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 240, 240, 240),
        padding: EdgeInsets.only(right: 24, left: 24, top: 35),
        child: ListView(children: [
          Text(
            'Search Result (3)',
            style: FontStyleUtils.style3,
          ),
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
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding:
                    EdgeInsets.only(right: 50, left: 50, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: Color(0XFF0D0846),
                    borderRadius: BorderRadius.circular(37)),
                child: Text(
                  'Suggest Movie',
                  style: FontStyleUtils.style5,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
