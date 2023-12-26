// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class DogAlbum extends StatelessWidget {
  const DogAlbum({super.key});

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
          child: Column(
            children: [
              AlbumImageItem(
                petImage1: "assets/dog/golden.jpg",
                petImage2: "assets/dog/golden2.jpg",
                title: "Golden",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AlbumImageItem extends StatelessWidget {
  final String petImage1;
  final String petImage2;
  final String title;

  const AlbumImageItem({
    super.key,
    required this.petImage1,
    required this.petImage2,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(250, 230, 183, 1),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(250, 230, 183, 1),
                    width: 5,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(petImage1),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(250, 230, 183, 1),
                    width: 5,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(petImage2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
