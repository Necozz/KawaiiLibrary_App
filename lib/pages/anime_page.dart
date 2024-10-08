import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({super.key});

  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Page'),
      ),
      body: Container(),
    );
  }
}
