// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/drawer.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  yGithub() {
    final Uri uri = Uri.parse("https://github.com/Yido1007");
    launchUrl(uri);
  }

  yLinkedin() {
    final Uri uri =
        Uri.parse("https://www.linkedin.com/in/yigithan-ihsan-topcu/");
    launchUrl(uri);
  }

  fGithub() {
    final Uri uri = Uri.parse("https://github.com/FurkanSanverdi");
    launchUrl(uri);
  }

  fLinkedin() {
    final Uri uri = Uri.parse(
        "https://www.linkedin.com/in/furkan-%C5%9Fanverdi-3ab811255/");
    launchUrl(uri);
  }

  eGithub() {
    final Uri uri = Uri.parse("https://github.com/doganlemre");
    launchUrl(uri);
  }

  eLinkedin() {
    final Uri uri =
        Uri.parse("https://www.linkedin.com/in/mustafa-emre-doğan-44a95327a/");
    launchUrl(uri);
  }

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Yiğithan Topçu",
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: yGithub,
                            child: SvgPicture.asset(
                              "assets/svg/github.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: yLinkedin,
                            child: SvgPicture.asset(
                              "assets/svg/linkedin.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Furkan Şanverdi",
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: fGithub,
                            child: SvgPicture.asset(
                              "assets/svg/github.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: fLinkedin,
                            child: SvgPicture.asset(
                              "assets/svg/linkedin.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Mustafa Emre Doğan",
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: eGithub,
                            child: SvgPicture.asset(
                              "assets/svg/github.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          ),
                          InkWell(
                            onTap: eLinkedin,
                            child: SvgPicture.asset(
                              "assets/svg/linkedin.svg",
                              height: 40,
                              color: Color.fromRGBO(96, 114, 116, 1),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
