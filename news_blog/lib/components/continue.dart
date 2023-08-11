import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Continue extends StatelessWidget {
  final String label;
  const Continue({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey.shade500,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: GoogleFonts.josefinSans(
                textStyle:
                    TextStyle(color: Colors.grey.shade600, fontSize: 18.0),
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey.shade500,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
