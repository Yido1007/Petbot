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
        // For background color
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(96, 114, 116, 1),
          ),
        ),
      ),
    );
  }
}
