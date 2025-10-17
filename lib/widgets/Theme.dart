import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  // static ThemeData get themeData => ThemeData(
  //   primarySwatch: Colors.blue,
  //   fontFamily: GoogleFonts().lato().fontFamily,
  //   appBarTheme: AppBarTheme(
  //     color: Colors.white,
  //     elevation: 0.0,
  //     iconTheme: IconThemeData(color: Colors.black),
  //   ),
  // );
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.light,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.lato().fontFamily,
  );
}
