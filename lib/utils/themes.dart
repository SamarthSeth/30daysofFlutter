import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  // static Color buttonColor = darkBluishColor;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      primaryColor: darkBluishColor,

      // buttonColor = darkBluishColor;
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      primaryColor: lightBluishColor,

      //  buttonColor = lightBluishColor;
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
