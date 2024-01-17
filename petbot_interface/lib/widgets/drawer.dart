// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(250, 230, 183, 1),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/home"),
                    child: Image.asset(
                      "assets/image/newlogo.png",
                    ),
                  ),
                  SideMenuItem(
                    title: 'Cat Album',
                    image: "assets/Icon/cat.png",
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/catAlbum", (route) => false),
                  ),
                  SideMenuItem(
                    title: 'Bird Album',
                    image: "assets/Icon/bird.png",
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/birdAlbum", (route) => false),
                  ),
                  SideMenuItem(
                    title: 'Fish Album',
                    image: "assets/Icon/fish.png",
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/fishAlbum", (route) => false),
                  ),
                  SideMenuItem(
                    title: 'Dog Album',
                    image: "assets/Icon/dog.png",
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/dogAlbum", (route) => false),
                  ),
                ],
              ),
            ),
            DrawerDownItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Color.fromRGBO(96, 114, 116, 1),
              ),
              title: "Contact",
              onTap: () => Navigator.pushNamed(context, "/contact"),
            ),
            DrawerDownItem(
              icon: Icon(
                Icons.token_outlined,
                color: Color.fromRGBO(96, 114, 116, 1),
              ),
              title: "F.A.Q",
              onTap: () => Navigator.pushNamed(context, '/faq'),
            ),
            Text(
              "Version 1.0.0",
              style: TextStyle(
                color: const Color.fromARGB(255, 39, 39, 39),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerDownItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function() onTap;
  const DrawerDownItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Color.fromRGBO(96, 114, 116, 1),
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

class SideMenuItem extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  const SideMenuItem({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              image,
              width: 40,
            ),
            Text(
              title,
              style: TextStyle(
                color: Color.fromRGBO(96, 114, 116, 1),
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
