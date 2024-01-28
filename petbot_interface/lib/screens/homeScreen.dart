// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
// import 'dart:math';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;
  List<dynamic> petData = [];
  TextEditingController searchController = new TextEditingController();

  List<Map<String, dynamic>> responses = [];

  loadData() async {
    final data = await rootBundle.loadString('petbot.json');
    setState(() {
      petData = jsonDecode(data);
      loading = false;
    });
  }

  sorgula() {
    Set<Map<String, dynamic>> responsesX = {};

    responsesX.add({
      "msg": searchController.text,
      "me": true,
    });

    var searchWords = searchController.text.split(' ');

    for (var element in petData) {
      var p = element["user_input"].cast<String>();
      var p2 = element["required_words"].cast<String>();

      int matched = 0;
      for (var t in searchWords) {
        if (p.contains(t)) {
          matched++;
        }
      }
      int matched2 = 0;
      for (var t in searchWords) {
        if (p2.contains(t)) {
          matched2++;
        }
      }

      if (matched == searchWords.length && matched2 == p2.length) {
        responsesX.add({
          "msg": element["bot_response"],
          "me": false,
        });
      }
    }
    searchController.text = "";
    setState(() {
      this.responses.addAll(responsesX);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

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
              child: SizedBox.expand(
                child: ListView.builder(
                  itemCount: responses.length,
                  itemBuilder: (context, index) => BubbleSpecialThree(
                    text: responses[index]["msg"],
                    color: Color.fromRGBO(250, 230, 183, 1),
                    tail: false,
                    isSender: responses[index]["me"],
                  ),
                ),
              ),
            ),
            //Text field padding
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    // Text field
                    child: TextField(
                      // Text field cursor color
                      cursorColor: Color.fromRGBO(222, 208, 182, 1),
                      style: TextStyle(
                        // Text field input text color
                        color: Color.fromRGBO(250, 230, 183, 1),
                      ),
                      controller: searchController,
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
                ),
                IconButton(
                  onPressed: sorgula,
                  icon: Icon(
                    Icons.send,
                    color: Color.fromRGBO(250, 230, 183, 1),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
