// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // App background
        backgroundColor: Color.fromRGBO(96, 114, 116, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          backgroundColor: Color.fromRGBO(96, 114, 116, 1),
          centerTitle: true,
          // App title
          title: Text(
            "PETBOT",
            // App title stylize
            style: TextStyle(
              color: Color.fromRGBO(250, 230, 183, 1),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: SideMenu(),
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            //Text field padding
            Padding(
              padding: const EdgeInsets.all(13.0),
              // Text field
              child: TextField(
                // Text field cursor color
                cursorColor: Color.fromRGBO(222, 208, 182, 1),
                style: TextStyle(
                  // Text field input text color
                  color: Color.fromRGBO(250, 230, 183, 1),
                ),
                // Whole input decoration
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    // Border color
                    borderSide: BorderSide(
                      color: Color.fromRGBO(250, 230, 183, 1),
                    ),
                  ),
                  // Placeholder
                  labelText: "Ask me something...",
                  // Placeholder color
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(250, 230, 183, 1),
                  ),
                  // Focus border and color
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(250, 183, 183, 1),
                    ),
                    // Border radius
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
