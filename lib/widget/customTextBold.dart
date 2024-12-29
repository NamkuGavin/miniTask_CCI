import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBoldText extends StatelessWidget {
  final String boldText;
  final String normalText;
  final double fontSize;

  const CustomBoldText({
    super.key,
    required this.boldText,
    required this.normalText,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$boldText ",
            style: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: normalText,
            style: GoogleFonts.poppins(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
