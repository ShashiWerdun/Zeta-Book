import 'package:flutter/material.dart';

class Themes {
  static final AppBarTheme lightAppBar = AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    actionsIconTheme: IconThemeData(color: Colors.black),
  );

  static final AppBarTheme darkAppBar = AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
    actionsIconTheme: IconThemeData(color: Colors.white),
  );

  static final FloatingActionButtonThemeData lightFAB =
      FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
    backgroundColor: Colors.lightBlueAccent,
  );

  static final FloatingActionButtonThemeData darkFAB =
      FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: Color(0xFF3C3C3C),
  );

  static final BottomNavigationBarThemeData lightNavBar =
      BottomNavigationBarThemeData(
    backgroundColor: Colors.blue,
    selectedItemColor: Colors.white,
  );

  static final BottomNavigationBarThemeData darkNavBar =
      BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF282828),
    selectedItemColor: Color(0xFF191919),
  );

  static final CardTheme lightCard = CardTheme(
    color: Color(0xFFFFF0F0),
    shadowColor: Colors.black,
  );

  static final CardTheme darkCard = CardTheme(
    color: Colors.black,
    shadowColor: Colors.white,
  );

  static final TextStyle header = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitle1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitle2 = TextStyle(
    fontSize: 18,
  );

  static final TextStyle bodyText1 = TextStyle(
    fontSize: 15,
  );

  static final TextStyle bodyText2 = TextStyle(
    fontSize: 13,
  );

  static final TextTheme textTheme = TextTheme(
    headline1: header,
    subtitle1: subtitle1,
    bodyText2: bodyText2,
    subtitle2: subtitle2,
    bodyText1: bodyText1,
  );

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'roboto',
    textTheme: textTheme,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blue,
    floatingActionButtonTheme: lightFAB,
    appBarTheme: lightAppBar,
    bottomNavigationBarTheme: lightNavBar,
    colorScheme: ColorScheme.light(),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
    cardTheme: lightCard,
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'roboto',
    textTheme: textTheme,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF282828),
    floatingActionButtonTheme: darkFAB,
    appBarTheme: darkAppBar,
    bottomNavigationBarTheme: darkNavBar,
    colorScheme: ColorScheme.dark(),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
    cardTheme: darkCard,
  );
}
