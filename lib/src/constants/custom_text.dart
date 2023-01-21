import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontweight});
  final String text;
  final double fontSize;
  final FontWeight fontweight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontweight,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
