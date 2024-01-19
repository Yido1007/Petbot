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
              // App background color
              color: Color.fromRGBO(96, 114, 116, 1),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // Fishes Image
                children: [
                  AlbumImageItem(
                    time: 600,
                    petImage1: "assets/fish/beta.jfif",
                    petImage2: "assets/fish/beta2.jfif",
                    title: "Beta Fish",
                  ),
                  AlbumImageItem(
                    time: 800,
                    petImage1: "assets/fish/scavenger.jfif",
                    petImage2: "assets/fish/scavenger2.jfif",
                    title: "Scavenger Fish",
                  ),
                  AlbumImageItem(
                    time: 1000,
                    petImage1: "assets/fish/discuss.jfif",
                    petImage2: "assets/fish/discuss2.jfif",
                    title: "Discuss Fish",
                  ),
                  AlbumImageItem(
                    time: 1100,
                    petImage1: "assets/fish/goldfish.jfif",
                    petImage2: "assets/fish/goldfish2.jfif",
                    title: "Goldfish",
                  ),
                  AlbumImageItem(
                    time: 1200,
                    petImage1: "assets/fish/shark.jfif",
                    petImage2: "assets/fish/shark2.jfif",
                    title: "Shark",
                  ),
                  AlbumImageItem(
                    time: 1300,
                    petImage1: "assets/fish/guppy.jfif",
                    petImage2: "assets/fish/guppy2.jfif",
                    title: "Guppy Fish",
                  ),
                  AlbumImageItem(
                    time: 1400,
                    petImage1: "assets/fish/angelfish.jfif",
                    petImage2: "assets/fish/angelfish2.jfif",
                    title: "Angel Fish",
                  ),
                  AlbumImageItem(
                    time: 1500,
                    petImage1: "assets/fish/nemo.jfif",
                    petImage2: "assets/fish/nemo2.jfif",
                    title: "Nemo Fish",
                  ),
                  AlbumImageItem(
                    time: 1500,
                    petImage1: "assets/fish/neontetra1.jfif",
                    petImage2: "assets/fish/neontetra2.jfif",
                    title: "Neon Tetra",
                  ),
                  AlbumImageItem(
                    time: 1500,
                    petImage1: "assets/fish/parrot.jfif",
                    petImage2: "assets/fish/parrot2.jfif",
                    title: "Parrot Fish",
                  ),
                  AlbumImageItem(
                    time: 1600,
                    petImage1: "assets/fish/stingray.jfif",
                    petImage2: "assets/fish/stingray2.jfif",
                    title: "Stingray Fish",
                  ),
                  AlbumImageItem(
                    time: 1600,
                    petImage1: "assets/fish/yellowprinces.jfif",
                    petImage2: "assets/fish/yellowprinces2.jfif",
                    title: "Yellow Princes Fish",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
