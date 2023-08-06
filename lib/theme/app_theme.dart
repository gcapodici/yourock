import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.black87;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    iconTheme: const IconThemeData(color: Colors.white),
    cardColor: Colors.white,
    indicatorColor: Colors.white,
    unselectedWidgetColor: Colors.blueGrey[300],
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.blueGrey[300],
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: Colors.blueGrey)
        .copyWith(background: Colors.blueGrey[900]),
  );
}
