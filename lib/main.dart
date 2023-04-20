import 'package:flutter/material.dart';

import 'pages/authorization_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        // textTheme: const TextTheme(
        //   labelLarge: TextStyle(),
        // ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        // textTheme: const TextTheme(
        //   labelLarge: TextStyle(),
        // ),
      ),
      home: const AuthorizationPage(),
    );
  }
}
