import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 50.0,
          backgroundColor: Colors.black,
          child: Center(
            child: Image.asset(
              'assets/image/blog-1.png',
              width: 500.0,
              height: 500.0,
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          text,
          style: GoogleFonts.josefinSans(
              textStyle:
                  TextStyle(color: Colors.grey.shade600, fontSize: 16.0)),
        ),
      ],
    );
  }
}
