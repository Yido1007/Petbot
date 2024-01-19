// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:petbot_interface/widgets/albumImageItem.dart';
import 'package:petbot_interface/widgets/drawer.dart';

class BirdAlbum extends StatefulWidget {
  const BirdAlbum({super.key});

  @override
  State<BirdAlbum> createState() => _BirdAlbumState();
}

class _BirdAlbumState extends State<BirdAlbum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            // Appbar background color
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          // Appbackground color
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
            // App background color
            color: Color.fromRGBO(96, 114, 116, 1),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Birds Image
              children: [
                AlbumImageItem(
                  time: 600,
                  petImage1: "assets/bird/amazon.jfif",
                  petImage2: "assets/bird/amazon2.jfif",
                  title: "Amazon Parrot",
                ),
                AlbumImageItem(
                  time: 800,
                  petImage1: "assets/bird/budgie.jfif",
                  petImage2: "assets/bird/budgie2.jfif",
                  title: "Budgie",
                ),
                AlbumImageItem(
                  time: 1000,
                  petImage1: "assets/bird/cacato.jfif",
                  petImage2: "assets/bird/cacato2.jfif",
                  title: "Cacato Parrot",
                ),
                AlbumImageItem(
                  time: 1100,
                  petImage1: "assets/bird/canary.jfif",
                  petImage2: "assets/bird/canary2.jfif",
                  title: "Canary",
                ),
                AlbumImageItem(
                  time: 1200,
                  petImage1: "assets/bird/Conure.jfif",
                  petImage2: "assets/bird/Conure2.jfif",
                  title: "Conure Parrot",
                ),
                AlbumImageItem(
                  time: 1300,
                  petImage1: "assets/bird/Grey.jfif",
                  petImage2: "assets/bird/Grey2.jfif",
                  title: "Jako Parrot",
                ),
                AlbumImageItem(
                  time: 1400,
                  petImage1: "assets/bird/macaw.jfif",
                  petImage2: "assets/bird/macaw2.jfif",
                  title: "Macaw Parrot",
                ),
                AlbumImageItem(
                  time: 1500,
                  petImage1: "assets/bird/nightingale.jfif",
                  petImage2: "assets/bird/nightingale2.jfif",
                  title: "Nightingale",
                ),
                AlbumImageItem(
                  time: 1600,
                  petImage1: "assets/bird/senegal.jfif",
                  petImage2: "assets/bird/senegal2.jfif",
                  title: "Senegal Parrot",
                ),
                AlbumImageItem(
                  time: 1600,
                  petImage1: "assets/bird/sultan1.jfif",
                  petImage2: "assets/bird/sultan2.jfif",
                  title: "Sultan Parrot",
                ),
              ],
            ),
          ),
        ),
      ),
      // Sidemenu widget
    );
  }
}
