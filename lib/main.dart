import 'package:flutter/material.dart';
import 'package:goodcoffee/theme/app_theme.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yourock",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.ligthTheme,
      initialRoute: 'home',
      routes: {'home': (_) => HomePage()},
    );
  }
}
