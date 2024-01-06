// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

//Import widgets
import '../widgets/drawer.dart';
import '/widgets/albumImageItem.dart';

class FishAlbum extends StatefulWidget {
  const FishAlbum({super.key});

  @override
  State<FishAlbum> createState() => _FishAlbumState();
}

class _FishAlbumState extends State<FishAlbum> {
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
                  petImage1: "",
                  petImage2: "",
                  title: "",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
