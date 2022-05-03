import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

///Use this to define your app themes (Light & Dark)
class AppTheme {
  static ThemeData theme = ThemeData(
    primaryColor: myPrimaryColor,
    disabledColor: myDisabledColor,
    errorColor: myErrorColor,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    dividerTheme: DividerThemeData(
      color: myGreyColors[100],
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: myScaffoldBgColor,
    ),
    listTileTheme: const ListTileThemeData(
      minLeadingWidth: 10,
      dense: true,
      horizontalTitleGap: 5,
    ),
    scaffoldBackgroundColor: myScaffoldBgColor,
    appBarTheme: const AppBarTheme(
      color: myScaffoldBgColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xff282828)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: myPrimaryColor, selectionHandleColor: myPrimaryColor),
    iconTheme: const IconThemeData(
      color: myPrimaryColor,
    ),
    indicatorColor: myPrimaryColor,
    primaryIconTheme: const IconThemeData(color: myPrimaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(myPrimaryColor)),
    ),
    textTheme: GoogleFonts.adventProTextTheme(
      TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 52,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 64 / 52),
        headline2: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 44,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 54 / 44),
        headline3: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 32,
            letterSpacing: .1,
            color: myBlackColors[500],
            height: 40 / 32),
        headline4: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 32 / 26),
        headline5: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 26 / 20),
        headline6: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 24 / 18),
        subtitle1: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: .1,
          color: myBlackColors[500],
          height: 24 / 16,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: .1,
          color: myBlackColors[500],
          height: 18 / 14,
        ),
        bodyText1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: .1,
            color: myBlackColors[500],
            height: 24 / 16),
        bodyText2: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: .1,
            color: myBlackColors[500],
            height: 22 / 14),
        caption: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: myBlackColors[500],
            letterSpacing: 0.2,
            height: 20 / 14),
        overline: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: myBlackColors[500],
            letterSpacing: .2,
            height: 16 / 13),
        button: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            letterSpacing: .2,
            color: myBlackColors[500],
            height: 24 / 16),
      ),
    ),
    primarySwatch: MaterialColor(
      myPrimaryColor.value,
      myPrimaryThemeSwatch,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(
        myPrimaryColor.value,
        myPrimaryThemeSwatch,
      ),
      accentColor: mySecondaryColor,
      backgroundColor: myScaffoldBgColor,
      brightness: Brightness.light,
      errorColor: myErrorColor,
    ),
  );
}
