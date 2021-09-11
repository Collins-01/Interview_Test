import 'package:google_fonts/google_fonts.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    headline2: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    headline3: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    headline4: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    headline5: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    headline6: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    button: GoogleFonts.lato(),
    overline: GoogleFonts.lato(),
    caption: GoogleFonts.lato(),
    subtitle1: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
    bodyText1: GoogleFonts.lato(),
    bodyText2: GoogleFonts.lato(),
  ).apply(
    bodyColor: AppColors.textColor,
  );
  final themeData = ThemeData(
    textTheme: TextTheme(
      headline1: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      headline2: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      headline3: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      headline4: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      headline5: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      headline6: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      button: GoogleFonts.lato(),
      overline: GoogleFonts.lato(),
      caption: GoogleFonts.lato(),
      subtitle1: GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
      bodyText1: GoogleFonts.lato(),
      bodyText2: GoogleFonts.lato(),
    ).apply(
      bodyColor: AppColors.textColor,
    ),
    iconTheme: IconThemeData(color: AppColors.textColor),
    // brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,

    accentColor: AppColors.primaryColor,
    indicatorColor: AppColors.primaryColor,
    toggleableActiveColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    // scaffoldBackgroundColor: kScaffoldColor,
    appBarTheme: AppBarTheme(
      // backgroundColor: AppColors.scaffoldColor,
        elevation: 0,
        textTheme: TextTheme(
          headline1:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          headline2:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          headline3:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          headline4:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          headline5:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          headline6:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          button: GoogleFonts.lato(),
          overline: GoogleFonts.lato(),
          caption: GoogleFonts.lato(),
          subtitle1:
              GoogleFonts.lato(), //TextStyle(fontFamily: "brown"),
          bodyText1: GoogleFonts.lato(),
          bodyText2: GoogleFonts.lato(),
        ).apply(
          bodyColor: AppColors.textColor,
        ),
        centerTitle: true,
        color: Colors.white),
  );
}