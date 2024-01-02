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
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          backgroundColor: Color.fromRGBO(96, 114, 116, 1),
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
        drawer: SideMenu(),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(96, 114, 116, 1),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                AlbumImageItem(
                  petImage1: "assets/dog/golden.jpg",
                  petImage2: "assets/dog/golden2.jpg",
                  title: "Golden",
                ),
                AlbumImageItem(
                  petImage1: "assets/dog/germanshepherd.jfif",
                  petImage2: "assets/dog/germanshepherd2.jfif",
                  title: "German Shepherd",
                ),
                AlbumImageItem(
                  petImage1: "assets/dog/bulldog.jfif",
                  petImage2: "assets/dog/bulldog2.jfif",
                  title: "Bulldog",
                ),
                AlbumImageItem(
                  petImage1: "assets/dog/labrador.jfif",
                  petImage2: "assets/dog/labrador2.jfif",
                  title: "Labrador",
                ),
                AlbumImageItem(
                  petImage1: "assets/dog/huskey1.jfif",
                  petImage2: "assets/dog/huskey2.jfif",
                  title: "Huskey",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
