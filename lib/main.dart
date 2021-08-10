import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeta_book/screens/splash.dart';
import 'package:zeta_book/utilities/theme_changer.dart';
import 'package:zeta_book/utilities/themes.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeChanger(),
    builder: (context, _) {
      final themeChanger = Provider.of<ThemeChanger>(context);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        themeMode: themeChanger.themeMode,
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
      );
    },
  ));
}
