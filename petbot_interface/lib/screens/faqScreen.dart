// ignore_for_file: file_names, prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, unused_element

// All Import Files

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:get/get.dart';
import '../widgets/drawer.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreen();
}

class _FAQScreen extends State<FAQScreen> {
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
        // Sidemenu widget
        drawer: SideMenu(),
        body: Accordion(
          // Style All Accordions
          headerBackgroundColor: Colors.transparent,
          // Header Color
          headerBackgroundColorOpened: Color.fromRGBO(250, 230, 183, 1),
          // Header Border Color
          headerBorderColor: Colors.black54,
          // Opened border color
          headerBorderColorOpened: Colors.black54,
          // border Width
          headerBorderWidth: 1,
          // Background Color
          contentBackgroundColor: Color.fromRGBO(250, 230, 183, 1),
          // Opened background color
          contentBorderColor: Color.fromRGBO(178, 165, 155, 1),
          // Opened border width
          contentBorderWidth: 1,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            // 1'st FAQ
            AccordionSection(
              // Accordion start positon
              isOpen: false,
              // Header left icon
              leftIcon:
                  //Header left icon color
                  const Icon(Icons.check_box_outlined, color: Colors.black),
              // Header right icon
              rightIcon: const Icon(
                Icons.keyboard_arrow_down,
                // Header right icon color
                color: Colors.black,
                size: 30,
              ),
              // Header Background Color
              // Vertical
              contentVerticalPadding: 50,
              // Header title
              header: const Text(
                'What does this bot aim at',
                // Header title style
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Opened body icon style
                  const Icon(
                    Icons.label_important_outline_rounded,
                    color: Color.fromRGBO(96, 114, 116, 1),
                    size: 50,
                  ).paddingOnly(right: 20),
                  const Flexible(
                    // Main Text
                    child: Text(
                      "The main goal of our bot is that people can easily access information for our animal friends and quickly eliminate the question marks in their minds.",
                      maxLines: 4,
                      // Main text style
                      style: TextStyle(
                        color: Color.fromRGBO(96, 114, 116, 1),
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 2'nd FAQ
            AccordionSection(
              // Accordion start position
              isOpen: false,
              // Header left icon
              leftIcon:
                  // Header left icon color
                  const Icon(Icons.check_box_outlined, color: Colors.black),
              // Header right icon
              rightIcon: const Icon(
                Icons.keyboard_arrow_down,
                // Header right icon color
                color: Colors.black,
                size: 30,
              ),
              // Header Background Color
              // Vertical
              contentVerticalPadding: 50,
              // Header title
              header: const Text(
                'How to use the bot',
                // Header title style
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Opened body icon style
                  const Icon(
                    Icons.label_important_outline_rounded,
                    color: Color.fromRGBO(96, 114, 116, 1),
                    size: 50,
                  ).paddingOnly(right: 20),
                  Flexible(
                    // Text span
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'The way the bot is used is to answer questions about our animal friends. ',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Question 1
                          TextSpan(
                            text:
                                'The first of our questions is : how long does he live.',
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Secondly,',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Quesiton 2
                          TextSpan(
                            text:
                                "what are the general characteristic features.",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Quesiton 3
                          TextSpan(
                            text: 'Thirdly,',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "common diseases",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Forthly,',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "what are pet types",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Fifthly,',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 114, 116, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "What pets eat",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final Uri linkedin1 =
    Uri.parse('https://www.linkedin.com/in/furkan-%C5%9Fanverdi-3ab811255/');

final Uri linkedin2 =
    Uri.parse('https://www.linkedin.com/in/mustafa-emre-doğan-44a95327a/');

final Uri linkedin3 =
    Uri.parse('https://www.linkedin.com/in/yigithan-ihsan-topcu/');

Future<void> _launchUrl1() async {
  if (!await launchUrl(linkedin1)) {
    throw Exception('Could not launch $linkedin1');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(linkedin1)) {
    throw Exception('Could not launch $linkedin2');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(linkedin1)) {
    throw Exception('Could not launch $linkedin3');
  }
}
