import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants.dart';

final lightThemData = ThemeData(
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: whiteColor,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme));

final darkThemData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
);
