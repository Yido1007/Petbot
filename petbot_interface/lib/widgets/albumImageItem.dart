// ignore_for_file: prefer_const_constructors, file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AlbumImageItem extends StatelessWidget {
  final String petImage1;
  final String petImage2;
  final String title;
  final int time;

  const AlbumImageItem({
    super.key,
    required this.petImage1,
    required this.petImage2,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      animate: true,
      duration: Duration(milliseconds: time),
      child: Column(
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
      ),
    );
  }
}
