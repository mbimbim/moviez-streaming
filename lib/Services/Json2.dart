import 'package:movie_streaming/Model/Json1.dart';

class Utils {
  static List<Datum> getData() {
    return [
      Datum(
          genre: "Action",
          img: "assets/images/image1.png",
          judul: "Pkoknya mantap",
          rate: 3),
      Datum(
          genre: "Cinta",
          img: "assets/images/image2.png",
          judul: "KKN OENARI",
          rate: 5),
      Datum(
          genre: "Perang",
          img: "assets/images/image1.png",
          judul: "Maroon 5",
          rate: 4),
    ];
  }

  static List<Datum> getData2() {
    return [
      Datum(
          genre: "History, War",
          img: "assets/images/img1.png",
          judul: "Pkoknya mantap",
          rate: 3),
      Datum(
          genre: "Sci, ",
          img: "assets/images/img2.png",
          judul: "KKN OENARI",
          rate: 5),
      Datum(
          genre: "History, War",
          img: "assets/images/img1.png",
          judul: "Maroon 5",
          rate: 2),
    ];
  }

  static List<Datum> getData3() {
    return [
      Datum(
          genre: "Horror",
          img: "assets/images/imgS1.png",
          judul: "The Dark II",
          rate: 4),
      Datum(
          genre: "Heroes",
          img: "assets/images/imgS2.png",
          judul: "The Dark Knight",
          rate: 5),
      Datum(
          genre: "Action",
          img: "assets/images/imgS3.png",
          judul: "The Dark Tower",
          rate: 4),
    ];
  }
}
