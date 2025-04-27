import 'package:flutter/material.dart';
//package
import 'package:google_fonts/google_fonts.dart';
//theme
import 'color_theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: const ColorScheme.light(
          primary: ColorTheme.voilet,
          secondary: ColorTheme.lighVoilet,
          tertiary: ColorTheme.lightBlue),
      textTheme: GoogleFonts.notoSansTextTheme(),
    );
  }
}