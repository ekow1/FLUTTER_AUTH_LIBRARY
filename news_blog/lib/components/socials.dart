// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  const Socials({super.key, this.scaffoldMessengerKey});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          FontAwesomeIcons.google,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          FontAwesomeIcons.github,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          FontAwesomeIcons.google,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
    ]);
  }
}
