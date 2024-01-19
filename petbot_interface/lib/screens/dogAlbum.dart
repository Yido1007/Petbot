// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/albumImageItem.dart';
import '../widgets/drawer.dart';

class DogAlbum extends StatefulWidget {
  const DogAlbum({super.key});

  @override
  State<DogAlbum> createState() => _DogAlbumState();
}

class _DogAlbumState extends State<DogAlbum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            // Appbar background color
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          backgroundColor: Color.fromRGBO(96, 114, 116, 1),
          // Title and title style
          centerTitle: true,
          title: Text(
            "PETBOT",
            style: TextStyle(
              color: Color.fromRGBO(250, 230, 183, 1),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Sidemenu widget
        drawer: SideMenu(),
        // Body
        body: Container(
          decoration: BoxDecoration(
            //App background color
            color: Color.fromRGBO(96, 114, 116, 1),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Dogs Image
              children: [
                AlbumImageItem(
                  time: 600,
                  petImage1: "assets/dog/golden.jpg",
                  petImage2: "assets/dog/golden2.jpg",
                  title: "Golden",
                ),
                AlbumImageItem(
                  time: 800,
                  petImage1: "assets/dog/germanshepherd.jfif",
                  petImage2: "assets/dog/germanshepherd2.jfif",
                  title: "German Shepherd",
                ),
                AlbumImageItem(
                  time: 1000,
                  petImage1: "assets/dog/bulldog.jfif",
                  petImage2: "assets/dog/bulldog2.jfif",
                  title: "Bulldog",
                ),
                AlbumImageItem(
                  time: 1100,
                  petImage1: "assets/dog/labrador.jfif",
                  petImage2: "assets/dog/labrador2.jfif",
                  title: "Labrador",
                ),
                AlbumImageItem(
                  time: 1200,
                  petImage1: "assets/dog/huskey1.jfif",
                  petImage2: "assets/dog/huskey2.jfif",
                  title: "Huskey",
                ),
                AlbumImageItem(
                  time: 1300,
                  petImage1: "assets/dog/dalmatian.jfif",
                  petImage2: "assets/dog/dalmatian2.jfif",
                  title: "Dalmatian",
                ),
                AlbumImageItem(
                  time: 1400,
                  petImage1: "assets/dog/jackRussel.jfif",
                  petImage2: "assets/dog/jackRussel2.jfif",
                  title: "Jack Russel",
                ),
                AlbumImageItem(
                  time: 1500,
                  petImage1: "assets/dog/Pomeranian1.jfif",
                  petImage2: "assets/dog/Pomeranian2.jfif",
                  title: "Pomeranian",
                ),
                AlbumImageItem(
                  time: 1500,
                  petImage1: "assets/dog/Kangal.jfif",
                  petImage2: "assets/dog/Kangal2.jfif",
                  title: "Kangal",
                ),
                AlbumImageItem(
                  time: 1500,
                  petImage1: "assets/dog/Poodle1.jfif",
                  petImage2: "assets/dog/Poodle2.jfif",
                  title: "Poddle",
                ),
                AlbumImageItem(
                  time: 1500,
                  petImage1: "assets/dog/Chihuahua1.jfif",
                  petImage2: "assets/dog/Chihuahua2.jfif",
                  title: "Chihuahua",
                ),
                AlbumImageItem(
                  time: 1600,
                  petImage1: "assets/dog/Pitbull1.jfif",
                  petImage2: "assets/dog/Pitbull2.jfif",
                  title: "Pitbull",
                ),
                AlbumImageItem(
                  time: 1600,
                  petImage1: "assets/dog/EnglishCocker2.jfif",
                  petImage2: "assets/dog/EnglishCocker1.jfif",
                  title: "English Cocker Spaniel",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
