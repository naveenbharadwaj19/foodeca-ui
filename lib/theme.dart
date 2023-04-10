import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
    primaryColor: const Color(0xfffffefe),
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 24,
            color: Color(0xff1c1f22),
            fontWeight: FontWeight.w500),
      ),
      headlineSmall: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(fontSize: 22, color: Color(0xff1c1f22)),
      ),
      bodyLarge: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xff1c1f22)),
      ),
      bodySmall: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff1c1f22)),
      ),
      displayLarge: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xffa1a0a0)),
      ),
      displaySmall: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xffa1a0a0)),
      ),
    ));




class CustomColors {
  static Color black = const Color(0xff1c1f22);
}