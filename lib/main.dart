import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeta_book/home_page.dart';
import 'package:zeta_book/theme_changer.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeChanger(),
    builder: (context, _) {
      final themeChanger = Provider.of<ThemeChanger>(context);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        themeMode: themeChanger.themeMode,
        theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Color(0xFF282828),
              fontFamily: 'roboto',
            ),
          ),
          scaffoldBackgroundColor: Colors.blue,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            titleTextStyle: TextStyle(
              color: Colors.black,
            ),
            actionsIconTheme: IconThemeData(color: Colors.black),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
          ),
          colorScheme: ColorScheme.light(),
          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
          cardTheme: CardTheme(
            color: Color(0xFFFFF0F0),
            shadowColor: Colors.black,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
              fontFamily: 'roboto',
            ),
          ),
          scaffoldBackgroundColor: Color(0xFF282828),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF1E1E1E),
            titleTextStyle: TextStyle(
              color: Colors.white,
            ),
            actionsIconTheme: IconThemeData(color: Colors.white),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF282828),
            selectedItemColor: Color(0xFF191919),
          ),
          colorScheme: ColorScheme.dark(),
          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
          cardTheme: CardTheme(
            color: Colors.black,
            shadowColor: Colors.white,
          ),
        ),
      );
    },
  ));
}
