//flutter run -d chrome --web-port=5500

import 'package:flutter/material.dart';
import 'pages/new_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COUNZO',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        colorSchemeSeed: Colors.tealAccent,
      ),
      home: const HomePage(),
    );
  }
}
