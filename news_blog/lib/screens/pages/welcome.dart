import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../form/login.dart';
import 'home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make the status bar transparent
      statusBarIconBrightness:
          Brightness.light, // Use light icons on status bar
    ));
    return Scaffold(
      body: Stack(children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black87
                .withOpacity(0.7), // Adjust color and opacity as needed
            BlendMode.srcATop,
          ),
          child: Image.asset(
            'assets/image/old-men.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Positioned.fill(
            top: 600,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Welcome to blogTO',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(' Explore the latest articles and stories.',
                      style: GoogleFonts.josefinSans(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 40),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                        elevation: 8, // Elevation/shadow
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded corners
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Get Started',
                            style: GoogleFonts.josefinSans(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          const Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
