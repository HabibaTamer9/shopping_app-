import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
        ThemeData(
          textTheme:
            TextTheme(
              bodyLarge: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              bodyMedium: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
              bodySmall: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
        ),
      home:HomeScreen(),
    );
  }
}
