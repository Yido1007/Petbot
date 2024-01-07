// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:petbot_interface/screens/birdAlbum.dart';
import 'package:petbot_interface/screens/fishAlbum.dart';
import '/screens/catAlbum.dart';
import '/screens/dogAlbum.dart';
import '/screens/faqScreen.dart';
import '/screens/homeScreen.dart';
import '/screens/settingScreen.dart';
import '/screens/welcomeScreen.dart';

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
        '/home': (context) => HomeScreen(),
        '/catAlbum': (context) => CatAlbum(),
        '/dogAlbum': (context) => DogAlbum(),
        '/fishAlbum': (context) => FishAlbum(),
        '/birdAlbum': (context) => BirdAlbum(),
        '/setting': (context) => SettingScreen(),
        '/faq': (context) => FAQScreen(),
      },
      initialRoute: '/home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        backgroundColor: Color.fromRGBO(96, 114, 116, 1),
        useMaterial3: true,
      ),
    );
  }
}
