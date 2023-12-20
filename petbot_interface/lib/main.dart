// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:petbot_interface/screens/albumScreen.dart';
import 'package:petbot_interface/screens/catAlbum.dart';
import 'package:petbot_interface/screens/dogAlbum.dart';
import 'package:petbot_interface/screens/faqScreen.dart';
import 'package:petbot_interface/screens/homeScreen.dart';
import 'package:petbot_interface/screens/settingScreen.dart';
import 'package:petbot_interface/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/album': (context) => AlbumScreen(),
        '/home': (context) => HomeScreen(),
        '/catAlbum': (context) => CatAlbum(),
        '/dogAlbum': (context) => DogAlbum(),
        '/setting': (context) => SettingScreen(),
        '/faq': (context) => FAQScreen()
      },
      initialRoute: '/home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
