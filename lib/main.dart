import 'package:flutter/material.dart';
import 'package:neko/pages/main_page.dart';
// Import the MainPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurpleAccent, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
