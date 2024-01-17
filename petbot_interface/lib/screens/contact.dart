// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(96, 114, 116, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(
            // Appbar background color
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          // App Theme
          backgroundColor: Color.fromRGBO(96, 114, 116, 1),
          centerTitle: true,
          //Title and title style
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "You can get in touch with us through below platforms.Our Team will reacch out to you as soon as it would be possible.",
                style: TextStyle(
                  color: Color.fromRGBO(176, 223, 228, 1),
                  fontSize: 17,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 230, 183, 1),
                ),
                width: 600,
                height: 250,
                child: Column(
                  children: [
                    Text(
                      "Yiğithan Topçu",
                      style: TextStyle(
                        color: Color.fromRGBO(96, 114, 116, 1),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
