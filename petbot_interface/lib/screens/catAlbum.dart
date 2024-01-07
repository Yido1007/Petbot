// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

//Import widgets
import 'package:flutter/material.dart';
import '../widgets/albumImageItem.dart';
import '../widgets/drawer.dart';

class CatAlbum extends StatefulWidget {
  const CatAlbum({super.key});

  @override
  State<CatAlbum> createState() => _CatAlbumState();
}

class _CatAlbumState extends State<CatAlbum> {
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
            //App background color
            color: Color.fromRGBO(96, 114, 116, 1),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Cats Image
              children: [
                AlbumImageItem(
                  petImage1: "assets/cat/sarman1.jpg",
                  petImage2: "assets/cat/sarman2.jfif",
                  title: "Sarman",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/mainecoon1.jpg",
                  petImage2: "assets/cat/mainecoon2.webp",
                  title: "Maine Coon",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/scottish1.jfif",
                  petImage2: "assets/cat/scottish2.jfif",
                  title: "Scottish",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/russianblue1.jfif",
                  petImage2: "assets/cat/russianblue2.jfif",
                  title: "Russian Blue",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/British1.jpg",
                  petImage2: "assets/cat/British2.jpg",
                  title: "Brisith",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/iran1.webp",
                  petImage2: "assets/cat/iran2.jpg",
                  title: "Persian",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/siyam1.jpg",
                  petImage2: "assets/cat/siyam2.jpg",
                  title: "Siamese",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/tuxedo1.jfif",
                  petImage2: "assets/cat/tuxedo2.jfif",
                  title: "Tuxedo",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/tekir1.jfif",
                  petImage2: "assets/cat/tekir2.jfif",
                  title: "Tabby",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/calico.jfif",
                  petImage2: "assets/cat/calico2.jfif",
                  title: "Calico",
                ),
                AlbumImageItem(
                  petImage1: "assets/cat/bombay1.jfif",
                  petImage2: "assets/cat/bombay2.jfif",
                  title: "Bombay",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
