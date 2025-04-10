import 'package:flutter/material.dart';
import 'login/login.dart';

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
                fontSize: 30,
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
      home:Login(),
    );
  }
}
