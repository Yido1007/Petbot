// ignore_for_file: file_names, prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables

// All Import Files
import 'package:flutter/material.dart';
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
            color: Color.fromRGBO(250, 230, 183, 1),
          ),
          // App Theme
          backgroundColor: Color.fromRGBO(96, 114, 116, 1),
          centerTitle: true,
          // App Title
          title: Text(
            "PETBOT",
            style: TextStyle(
              color: Color.fromRGBO(250, 230, 183, 1),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // SideBar
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
              isOpen: false,
              leftIcon:
                  const Icon(Icons.check_box_outlined, color: Colors.black),
              rightIcon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 30,
              ),
              // Header Background Color
              // Vertical
              contentVerticalPadding: 50,
              header: const Text(
                'What does this bot aim at',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.label_important_outline_rounded,
                    color: Color.fromRGBO(96, 114, 116, 1),
                    size: 50,
                  ).paddingOnly(right: 20),
                  const Flexible(
                    child: Text(
                      "The main goal of our bot is that people can easily access information for our animal friends and quickly eliminate the question marks in their minds.",
                      maxLines: 4,
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
              isOpen: false,
              leftIcon:
                  const Icon(Icons.check_box_outlined, color: Colors.black),
              rightIcon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 30,
              ),
              // Header Background Color
              // Vertical
              contentVerticalPadding: 50,
              header: const Text(
                'How to use the bot',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.label_important_outline_rounded,
                    color: Color.fromRGBO(96, 114, 116, 1),
                    size: 50,
                  ).paddingOnly(right: 20),
                  Flexible(
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
                          TextSpan(
                            text:
                                "what are the general characteristic features",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 59, 59, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
