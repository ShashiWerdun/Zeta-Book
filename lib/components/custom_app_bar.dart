import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeta_book/utilities/theme_changer.dart';

AppBar buildAppBar(BuildContext context, ThemeChanger themeChanger) {
  return AppBar(
    title: Text(
      'Zeta Book',
      style: Theme.of(context).appBarTheme.titleTextStyle,
    ),
    actions: [
      Icon(Icons.light_mode_rounded),
      Switch.adaptive(
        value: themeChanger.darkMode,
        onChanged: (value) {
          final changer = Provider.of<ThemeChanger>(context, listen: false);
          changer.toggleTheme(value);
        },
      ),
      Icon(Icons.dark_mode_rounded),
    ],
  );
}